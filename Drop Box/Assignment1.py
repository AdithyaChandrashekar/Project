#CSE 6331 Cloud Computing 
#Assignment 1
#Adithya Chandrashekar
#1000990558

import gnupg
import dropbox
import os
import time
import sys
from watchdog.observers import Observer  
from watchdog.events import PatternMatchingEventHandler
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

# Class checks for any modification in the folder
class MyHandler(FileSystemEventHandler):
    def on_modified(self, event):
        print("Got it!")

        #The path specified stores the key generated
        gpg = gnupg.GPG(gnupghome='C:\home\directory')
        gpg.encoding = 'utf-8'
        print ("Generating keys")

        #Mentioning public_key parameters
        public_key_params = {'Key-Type': 'DSA','Key-Length': 1024,'Passphrase':'publickey','Subkey-Type': 'ELG-E','Subkey-Length': 2048,
                            'Name-Real':'public','Name-Email':'public@uta.edu','Expire-Date': 0}
        pub_key_input = gpg.gen_key_input(**public_key_params)
        #Generating public keys 
        publickey = gpg.gen_key(pub_key_input)

        #Mentioning private_key parameters
        private_key_params = {'Key-Type': 'DSA','Key-Length': 1024,'Passphrase':'privatekey','Subkey-Type': 'ELG-E','Subkey-Length': 2048,
                                  'Name-Real':'private','Name-Email':'private@uta.edu','Expire-Date': 0}
        pri_key_input = gpg.gen_key_input(**private_key_params)
        #Generating private keys
        privatekey = gpg.gen_key(pri_key_input)
        print ("Keys generated.")

        #Specifying the access token code of dropbox
        client = dropbox.client.DropboxClient("RH7GNVBu9dgAAAAAAAAAEFxenne6o-O07CF2wZdYKXjLqhUzckIHU1hLcyTEIgTo")

        #Providing file path to be encrypted
        f = open("C:\\Users\\Adithya\\Desktop\\Cloud\\signed.txt", 'rb')
        #encrypting and signing the above file and saving it in signedresult.txt
        encrypted = gpg.encrypt_file(f, privatekey,sign=publickey, passphrase='publickey',output="C:\\Users\\Adithya\\Desktop\\Cloud\\signedresult.txt")
        print ("encrypted and signed")

        #Uploading signedresult.txt to dropbox as adi.txt
        f = open("C:\\Users\\Adithya\\Desktop\\Cloud\\signedresult.txt", 'rb')
        response = client.put_file('/adi.txt', f)
        print ("uploaded")

        #Decryting the file adi.txt from dropbox
        f1, metadata = client.get_file_and_metadata('/adi.txt')
        downloaded = open("C:\\Users\\Adithya\\Desktop\\Cloud\\signedresult.txt", 'wb')
        downloaded.write(f1.read())
        downloaded.close()
        downloaded1 = open("C:\\Users\\Adithya\\Desktop\\Cloud\\signedresult.txt", 'rb').read()
        # Verify the file with passphrase and decrypt it
        decrypted = gpg.decrypt(downloaded1, passphrase='privatekey', output="C:\\Users\\Adithya\\Desktop\\Cloud\\verified.txt")
        print ("File decrypted and verified.")
        sys.exit(1)

#Here the statement asks for the file to be dropped in the folder
if __name__ == "__main__":
    print ("Drop a file")
    event_handler = MyHandler()
    #Observes and schedule the event_handler
    observer = Observer()
    observer.schedule(event_handler, path='C:\\Users\\Adithya\\Desktop\\Cloud', recursive=False)
    observer.start()
    #loop which checks the folder for changes every second
    try:
        while True:
            time.sleep(1)
            
    except KeyboardInterrupt:
        observer.stop()
    observer.join()


#References:
#https://pythonhosted.org/python-gnupg/
#https://www.dropbox.com/developers/core/start/python
#https://gist.github.com/vsajip/922267
#http://en.wikipedia.org/wiki/Digital_signature
#http://pip.readthedocs.org/en/latest/installing.html
#http://stackoverflow.com/questions/18599339/python-watchdog-monitoring-file-for-changes?rq=1

 

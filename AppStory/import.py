import requests
import zipfile

namesURL = 'https://www.ssa.gov/OACT/babynames/names.zip'
namesZIP = requests.get(namesURL)

with ZipFile('names.zip') as myzip:
    with myzip.extract('yob2020.txt', path='~/data') as names2020:
        print(names2020.read())
       

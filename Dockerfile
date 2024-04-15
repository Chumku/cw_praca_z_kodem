# Użyj oficjalnie dostępnego obrazu Pythona 3.9
FROM python:3.9

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj plik wymagań i zainstaluj zależności
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Skopiuj zawartość bieżącego katalogu do katalogu /app w kontenerze
COPY . .

# Zdefiniuj zmienną środowiskową FLASK_APP
ENV FLASK_APP=app.py

# Domyślny port, na którym będzie działać aplikacja
EXPOSE 5000

# Uruchom aplikację Flask
CMD ["flask", "run", "--host=0.0.0.0"]

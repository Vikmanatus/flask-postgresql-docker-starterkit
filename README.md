# flask-postgresql-docker-starterkit

Minimal application providing all boilerplate code required to start basic Flask project's in Python

## 🧰 Project initialization

To setup the project simply open a first terminal and type the following command:

```
    docker-compose build
```

## ⚙️ Run the project

To run the project in the same terminal run the following command

```
    docker-compose up flask-server
```

Application will be available on this URI: `http://127.0.0.1:5000`
### 🔪 Kill the project

Open a terminal and type the following command :

```
    docker-compose down flask-server
```

## 💾 Databse

### ⚡️ Run the databse

Open a second terminal and type the following command:

```
    docker-compose up database
```

## 🕵️ Environment Variables

You need to have a `.env` file containing all the keys and values needed.

You can refer to the `.env.example` file located at `./.env.example`.

Create a file named `.env` in the root folder and copy-paste the keys from the `.env.example` file, the values should have been given to you

**Note** : the `.env` file should in the same folder as `.env.example`

## 📝 Notes

**Please note that you must run the `database` container before running the `flask-server` container, otherwise the `flask-server` container will crash**

**Note**: If you are running the project on `Macos` or `Linux` and you need help on the `Makefile` targets you can type the command: `make help`

# Flutter Node.js MySQL Authentication Project

This project demonstrates a complete user authentication system built with Flutter (frontend), Node.js (Express.js backend), and MySQL database.

## Project Structure:
- **Flutter (Frontend):** Handles the user interface and interactions.
- **Node.js (Backend):** Provides REST API endpoints and communicates with MySQL.
- **MySQL Database:** Stores user data (id, name, email, password).

---

## Prerequisites:

### 1. Install Flutter
- Visit [Flutter's official website](https://flutter.dev/docs/get-started/install)
- Follow the instructions specific to your operating system.
- Verify your installation by running:
  ```bash
  flutter doctor
  ```

### 2. Install Node.js
- Download and install from [Node.js official website](https://nodejs.org/en/).
- Verify installation:
  ```bash
  node -v
  npm -v
  ```

### 3. Install XAMPP (MySQL)
- Download [XAMPP](https://www.apachefriends.org/index.html)
- Install and run MySQL from XAMPP control panel.

---

## Project Setup:

### Step 1: Clone Repository
Clone your project from GitHub:
```bash
git clone https://github.com/ArnabmoyPaul/flutter_auth_nodejs
```

### Step 2: Install Dependencies
#### Flutter App:
```bash
cd flutter_auth_node
flutter pub get
```

#### Node.js Backend:
```bash
cd server
npm install
```

---

## Database Setup:

### Step 1: Create Database (`userDB2`)
- Open XAMPP and start Apache & MySQL.
- Open phpMyAdmin: `http://localhost/phpmyadmin`
- Create a new database named `userDB2`.

### Step 2: Create Table (`users`)
Run the following SQL in phpMyAdmin to create the `users` table:
```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);
```

---

## Configuration (.env File)

Create `.env` file in your backend folder and set:

```env
PORT=3001
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=@rnabmoy1210 # Replace with your MySQL root password from your provided .env
DB_NAME=userDB2
JWT_SECRET=arnabmoypaul123 # Change this for production use
```

---

## Brief Explanation of Dependencies:

### Flutter (Frontend Packages):
- `http`: HTTP client for sending requests to Node.js backend.
- `provider`: State management library for managing user authentication.
- `shared_preferences`: Persisting authentication tokens locally.

### Node.js (Backend Packages):
- `express`: Web framework for creating REST API endpoints.
- `mysql2`: MySQL client for database interaction.
- `bcryptjs`: Securely hashing user passwords.
- `jsonwebtoken`: Generating JWT tokens for authentication.
- `dotenv`: Managing environment variables.
- `nodemon`: Automatically restarting server on file changes (development).

---

## Run the Project:

### Step 1: Run Node.js Backend
```bash
cd your_backend_folder
npm run dev
```

### Step 2: Run Flutter App
Connect your physical device or run emulator, then:
```bash
cd your_flutter_project
flutter run
```

---

## Project Workflow:

- Signup: Users can create a new account.
- Login: Users login to the app, receiving a token stored in shared preferences.
- Home Screen: After login, users see their profile information.
- Logout: Users can securely logout and return to the login/signup screen.

---

## Troubleshooting:
- **MySQL connection errors:** Ensure MySQL service is running on XAMPP.
- **Port issues:** Ensure port `3001` is free and correctly specified in `.env`.
- **Authentication issues:** Check JWT secret and token handling.

---

## Final Notes:

You now have a fully functional authentication app powered by Flutter, Node.js, and MySQL.

For further queries or support, feel free to open an issue or contact the project maintainer.


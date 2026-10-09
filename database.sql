CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE UsersCV (
    cv_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    professional_summary VARCHAR(200) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE CV_ProgrammingEntry (
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    cv_id INT NOT NULL,
    language_name VARCHAR(50) NOT NULL,
    is_key_language BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (cv_id) REFERENCES UsersCV(cv_id),
    UNIQUE (cv_id, is_key_language)
);

CREATE TABLE CV_EducationEntry (
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    cv_id INT NOT NULL,
    institution_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (cv_id) REFERENCES UsersCV(cv_id)
);

CREATE TABLE CV_LinkEntry (
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    cv_id INT NOT NULL,
    url VARCHAR(150) NOT NULL,
    FOREIGN KEY (cv_id) REFERENCES UsersCV(cv_id)
);

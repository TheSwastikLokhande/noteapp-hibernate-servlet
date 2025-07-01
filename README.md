# NodeTracker

NodeTracker is a simple Java web-based note management system using Servlets, Hibernate, and JSP. It allows users to create, read, update, and delete notes through a user-friendly interface.

## Features

- Add, update, and delete notes
- Hibernate ORM for database operations
- Servlet-based MVC structure
- JSP for frontend rendering
- Maven project structure for easy dependency management

## Technologies Used

- Java 8+
- Servlets
- JSP
- Hibernate
- MySQL (or any other RDBMS)
- Maven
- Eclipse IDE

## Project Structure

'''

NodeTracker/
├── src/main/java/com/entities/Note.java
├── src/main/java/com/helper/FactoryProvider.java
├── src/main/java/com/servlets/...
├── src/main/resources/hibernate.cfg.xml
├── WebContent/
│ ├── all_notes.jsp
│ ├── add_note.jsp
│ ├── edit.jsp
│ └── index.jsp
├── pom.xml
└── .settings, .classpath, .project (Eclipse specific)

'''

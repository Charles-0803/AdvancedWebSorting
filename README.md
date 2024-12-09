# Sorting Web Application

This project is a Spring-based web application deployed on Apache Tomcat. It provides RESTful API endpoints following HATEOAS principles and integrates sorting algorithms (Heap Sort, Quick Sort, Merge Sort, Radix Sort, Bucket Sort) for data processing.

---

## Features

1. **Sorting Algorithms**
    - Implements Heap Sort, Quick Sort, Merge Sort, Radix Sort, and Bucket Sort.
    - Allows users to choose an algorithm via a unified JSP form.

2. **CRUD Operations**
    - Manage sorting history (add, view, update, delete).
    - RESTful API adhering to HATEOAS principles.

3. **Spring Framework**
    - Uses dependency injection, autowiring, and application context.

4. **Apache Tomcat Deployment**
    - Configured for handling HTTP requests and responses efficiently.

---

## Setup and Installation

### Prerequisites

- JDK 11 or later
- Apache Tomcat 9.0 or later
- Maven 3.6+
- MySQL 8.0+ (optional for persistence of history)

---

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/SortingWebApp.git
   cd SortingWebApp

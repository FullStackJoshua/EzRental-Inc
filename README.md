
# EZRental Inc. POS Management System

## Overview
EZRental Inc. aims to modernize the auto rental industry with a comprehensive Auto Rental Point-of-Sale (POS) Management System. This initiative addresses operational inefficiencies and enhances scalability by leveraging modern database management and application design.

## Key Features
- **Customer Access**: Enables retail and corporate customers to reserve vehicles via in-person service or online platforms.
- **Employee Access**: Supports Customer Service Representatives, maintenance staff, and inventory teams with efficient in-agency applications.
- **Corporate Analytics**: Provides business users with reporting and analytical tools through an intranet portal.
- **Global Scalability**: Designed to operate in major cities across the globe, ensuring consistent performance and competitive pricing.

## Application Components
1. **POS System**: For vehicle rental, customer management, and transaction handling.
2. **Back-Office Systems**:
   - Vehicle Inventory Management
   - Credit Card Management
   - Employee and Customer Account Management
3. **Customer Portal**: A public-facing internet site for reservations and profile management.

## Development Methodology
The system development utilizes a hybrid approach combining Waterfall and Agile methodologies to ensure robust database architecture and adaptive development cycles.

### Waterfall Phases
1. Planning & Discovery
2. Analysis
3. Design
4. Development & Implementation
5. Testing and Validation
6. Go Live and Operations

### Agile Sprints
Each Waterfall phase is divided into Agile sprints for iterative progress:
- Sprint 1: Planning, Business Requirements, and Conceptual Modeling
- Sprint 2: Design and Schema Definition
- Sprint 3: Development and Physical Schema Implementation
- Sprint 4: Validation, Testing, and Operations

## Business Rules
### Customers
- Two customer types: Retail and Corporate.
- Retail customers can access discounts and reward programs.
- Minimum customer age: 21 years.

### Vehicles
- Four main vehicle categories: Cars, SUVs, Minivans, and Cargo Vans.
- Vehicles classified by attributes like VIN, mileage, transmission type, and capacity.

### Reservations
- A reservation guarantees vehicle availability.
- Customers reserve vehicle categories, not specific vehicles.
- Tracks reservation history for analytical purposes.

### Rentals
- Rentals may occur with or without prior reservations.
- Tracks vehicle pick-up/drop-off details and associated costs.

## Security
- Separate user accounts for employees and customers.
- Strong authentication for application access.

## Future Goals
The system is designed for modular and scalable growth to incorporate additional features like invoicing and advanced employee management.

---

## Installation and Setup
1. Clone the repository to your local machine.
2. Configure the database using the provided schema files.
3. Deploy the application on your preferred server (supports hybrid cloud environments).


﻿
# Splash Auto Mobile app 

### Defining Problem

>  Identify the problem you’re trying to solve by building this particular marketplace App?

Have you ever sat in your friends car and were too shy to let them know their vehicle smells like Shrek's feet? Have you had a proper glance at your car and said to yourself "Wow, my car looks like a swamp... Ill clean it this weekend"

I am sorry to tell you this but this weekend will never arrive.

Driving around various place, I see vehicles that are constantly not being taken care of and thus leading to depreciating your vehicles value, at the end of the day Exterior & Interior is everything.

Splash Mobile Auto Wash is designed to fix this problem, It is specifically designed to make your vehicle look like it just came from a dealerships showroom & also to make sure you don't keep neglecting the vehicles value, We can sort out a package deal for you to take care of the Vehicles health! 

> Why is it a _problem_ that needs solving?

The reason why this is a problem that needs solving is I have done research on how much a private detailer makes and it can be anywhere from $50AUD-$200AUD for detailing a vehicle, Some Vehicle Owners don't get what they pay for & some Detailers/Washers don't earn as much as they should. 

Splash Mobile Auto Wash connects people.

From online social research I see a lot of people asking about professional detailers or just simply want a quick cheap clean and need it ASAP. We ensure security and we ensure the service is provided from both sides.

> Link to GITHUB Repo & Heroku

- Github https://github.com/paveldemeter/car_wash
- Heroku https://arcane-beach-59796.herokuapp.com/
## 
### Splash Mobile Auto Wash

##### Purpose

The primary purposes of this Web app is to ensure owners can receive a cleaning service for their Vehicle from Washers & Washers can earn a payment upon cleaning the vehicle from the owner.

##### Functionality / features / Gem Dependencies
STRIPE has been implemented as a payment system to gain security through a trusted payment system. (Still needs in beta_

CLOUDINARY has been implemented for a user to upload their Identification as an image upload(Both Owners & Washers).

ROLIFY has been implemented so an Owner cannot go under the washer tab t

DEVISE has been implemented for user control.

The site has a simple layout so on everypage you can access the Home page, the footer & the header which consists of the users log out, login & sign up.



### SiteMap
![sitemap](docs/sitemap.png)

## 

### Screenshots
##### Homepage
![pricing](docs/homepage.png)
##### Signup 
![signup](docs/signup.png)
##### About us 
![aboutus](docs/aboutus.png)
##### Pricing
![carowner](docs/pricing.png)
##### Submitting quote
![contactus](docs/carowner.png)
##### Contact 
![homepage](docs/contactus.png)
##### iPhone x Homepage
![iphonex](docs/iphonexhomepage.png)
## 


##### Target audience

As the legal age to drive is 17, Splash Auto Mobile Wash has focused on the target audience of people over 18 years of age, for Identification purposes for both owners of vehices and Washers. 

The specific target audience would be car enthuasists, It can also be implemented to small car dealerships as a package, So not only indiviuals but also big organisations which bring a huge market our way.

##### Tech Stack

-   HTML, CSS3, SCSS
- Ruby-on-Rails for development
-   GitHub for version control
-   Heroku for deployment
-   Trello for user stories and work flow.
-   Lucid Chart for site map and ERD

-   Rails Gems (see below) for extending functionalities beyond MVC
 > Detail any third party services that your App will use.

-   Cloudinary: To manage Image upload
-   Stripe: To manage payments
-   GitHub: To manage version control
-   Heroku: To deploy live app
-   Bulma: for styling

#### User Stories
##### As an owner I want to be able to login/signup to the site for access.

Owners will be able to login/signup page to enter the site.

##### As a owner I want to be able to pay for the service with my card details.

Once owner is logged in and made a quote, they can pay through stripe for their service.

##### As a owner I want to be able to views options for vehicle service cleaning.
Owners will have the option to choose from 3 sizes to wash their car. As we offer one service only.



##### As an owner I want to be able to view information about the company and contact details.

The website will have an about page implemented for both owners/washers.

##### As an owner I want to be able to pay for my cleaning service through a secure system.
Stripe will be integrated to implement secure payments between owner & washer.


#### Washer User Story

##### As a a washer I want to be able to login/signup to access the site

Washers & vehicle owners will both require ID to sign up to the site, Rolify will take care of the option to view cars to wash after logging in as a washer.

##### As a washer I want to be able to view the cars information and owners.

Washer will have their own tab "Washers" information about the vehicle they are cleaning, registration details, suburb, make, model & year of vehicle.

##### As a washer I want to be able to get paid through a secure system such as stripe for security.
Washer will get paid from stripe which is a secure payment system.



##### 

#### Wire-frames

##### Homepage
![wireframe](docs/wireframes/wf_homepage.png)
##### About
![wireframe](docs/wireframes/wf_about.png)
##### Pricing
![wireframe](docs/wireframes/wf_pricing.png)
##### Car details
![wireframe](docs/wireframes/wf_carowner.png)
##### Sign up
![wireframe](docs/wireframes/wf_signup.png)
##### Jobs for Washer
![wireframe](docs/wireframes/wf_jobs.png)
##### Contact us
![wireframe](docs/wireframes/wf_contact.png)

## 


##### ERD
![ERD](docs/erd.png)


##### Describe the way tasks are allocated and tracked in your project

For time management, I used note taking to make sure what I have to still implement & what is more important, Much like trello but I don't like trellos design, I would rather type notes or write them. 

Here is an example of note taking:

![notes](docs/notes.png)
![notes](docs/asap_notes.png)


##### Future Updates

- I would like to implement a google map geo-maping feature so it will allocate the vehicle to the closest washer.
- Setup of a system such as mailgun for activation features.
- Adminstrator dashboard (owner of website)
- Some sort of 24/7 chat robot for the website incase of any issues occur and to minimalize phone calls and implement automation.

 
 ##### Explain the different high-level components (abstractions) in your app

 This application has a different components such has Bulma which is implemented styling which consists of a navigation bar, pricing table & various simple styles, The app also had a devise gem which implements users to sign in, sign up & sign out. You have the option to check a box as a washer, then you will be able to view the jobs tab.

 The application was made very simple to navigate, sign up, sign in & use.

##### Describe your projects models in terms of the relationships (active record associations)they have with each other (explain models)
Car model: 
The car will be cleaned by many cleaners and will be owned by one user (owner).

Payment model: 
The payment will be made by a user(owner), and will be received by cleaner.

Role model:
The role model will be apart of all users, to maintain the rolify gem.




Users model:

The user model has the devise gem enabled for registering a user (washer or owner). A user will own a car and can be a washer also. It will attach an image I.D to each user.

#### Discuss the database relations to be implemented in your application


Car: has_many cleaners, class_name: ‘User’ to tell the car model is has multiple cleaners and that a cleaner is a user.
belongs_to :owner (user owns car) & has_one :payment

Payment: belongs_to :cleaner, class_name: ‘User’, which belongs_to :car (payment is made via car cleaned)

Role: has_and_belongs_to_many :users, :join_table => :users_roles (enables rolify through all users)


User: 
has_many :cars, through ‘owner_id’
has_one :cleaning_payment for one vehicle, class_name: ‘Payment’, through foreign_key:  ‘cleaner_id’



has_many :cleaned payments, through: :cars, source: :payment
 So a cleaner can clean multiple vehicles and receive multiple payments.

has_one_attatched :image 

All users have an attached image file.








import { RequestHandler } from "express";



// export const registrationValidator: RequestHandler<{
//   firstname: string;
//   lastname: string;
//   email: string;
//   phonenumber: string;
//   company: string;
//   password: string;
//   passwordRepeat: string;
// }> = (req, res, next) => {
//     const { firstname, lastname, email, phonenumber, company, password, passwordRepeat} = req.body;
//     const errors = [];
//     const emailRegex = /[a-z0-9._]+@[a-z0-9-]+\.[a-z]{2,3}/;
//     const dataRegex = /^[a-zA-Z\s-']+$/;

//     console.log(req.body)

//     // // first name validation
    // if(firstname== null || firstname.trim() === '') {
    //     errors.push({ field: "firstname", message: "⚠ this field is required"})
    // } else if (firstname.length >= 50) {
    //     errors.push({ field: "firstname", message: "⚠ this field should contain less than 50 characters"})
    // } else if (!dataRegex.test(firstname)) {
    //     errors.push({ field: "firstname", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    // }
    
    // // last name validation
    // if(lastname == null || lastname.trim() === '') {
    //     errors.push({ field: "lastname", message: "⚠ this field is required"})
    // } else if (lastname.length >= 50) {
    //     errors.push({ field: "lastname", message: "⚠ this field should contain less than 50 characters"})
    // } else if (!dataRegex.test(lastname)) {
    //     errors.push({ field: "lastname", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    // }

    // // email validation
    // if (email == null || email.trim() === '') {
    //     errors.push({ field: "email", message: "⚠ this field is required"})
    // } else if  (!emailRegex.test(email)) {
    //     errors.push({ field: 'email', message: '⚠ Invalid email' });
    // }

    // // phonenumber validation
    // if(phonenumber== null || phonenumber.trim() === '') {
    //     errors.push({ field: "phonenumber", message: "⚠ this field is required"})
    // } else if (phonenumber.length >= 20) {
    //     errors.push({ field: "phonenumber", message: "⚠ this field should contain less than 20 digits"})
    // } else if (!dataRegex.test(phonenumber)) {
    //     errors.push({ field: "phonenumber", message: "⚠ this field should contain only numbers, hypens and spaces"})
    // }

    // // company validation
    // if(company == null || company.trim() === '') {
    //     errors.push({ field: "company", message: "⚠ this field is required"})
    // } else if (lastname.length >= 50) {
    //     errors.push({ field: "company", message: "⚠ this field should contain less than 50 characters"})
    // } else if (!dataRegex.test(company)) {
    //     errors.push({ field: "company", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    // }

    // // password validation
    // if(password == null || password.trim() === '') {
    //     errors.push({ field: "password", message: "⚠ this field is required"})
    // } else if (!dataRegex.test(password)) {
    //   errors.push({ field: "password", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    // }

    // // passwordRepeat validation
    // if(passwordRepeat == null || passwordRepeat.trim() === '') {
    //     errors.push({ field: "password", passwordRepeat: "⚠ this field is required"})
    // } else if (!dataRegex.test(passwordRepeat)) {
    //   errors.push({ field: "passwordRepeat", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    // }

    // if there are erorrs send 422 status, if not - proceed to next step
  //   if (errors.length) {
  //       res.status(422).json({ validationErrors: errors });
  //     } else {
  //       next();
  //     }
  // }
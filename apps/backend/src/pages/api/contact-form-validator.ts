import { RequestHandler } from "express";

export const validateInput: RequestHandler<{
    first_name: string;
    last_name: string;
    email: string;
    message: string;
  
  }> = (req, res, next) => {

    const { first_name, last_name, email, message } = req.body;
    const errors = [];
    const emailRegex = /[a-z0-9._]+@[a-z0-9-]+\.[a-z]{2,3}/;
    const nameRegex = /^[a-zA-Z\s-']+$/;

    // first name validation
    if(first_name == ' ') {
        errors.push({ field: "first_name", message: "⚠ this field is required"})
    } else if (first_name.length >= 255) {
        errors.push({ field: "first_name", message: "⚠ this field should contain less than 255 characters"})
    } else if (!nameRegex.test(first_name)) {
        errors.push({ field: "first_name", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    }
    
    // last name validation
    if(last_name == ' ') {
        errors.push({ field: "last_name", message: "⚠ this field is required"})
    } else if (last_name.length >= 255) {
        errors.push({ field: "last_name", message: "⚠ this field should contain less than 255 characters"})
    } else if (!nameRegex.test(last_name)) {
        errors.push({ field: "last_name", message: "⚠ this field should contain only letters, spaces, hyphens, and apostrophes"})
    }
    // email validation
    if (email == ' ') {
        errors.push({ field: "email", message: "⚠ this field is required"})
    } else if  (!emailRegex.test(email)) {
        errors.push({ field: 'email', message: '⚠ Invalid email' });
    }
    // message validation
    if(message == ' ') {
        errors.push({ field: "message", message: "⚠ this field is required"})
    }
    // if there are erorrs send 422 status, if not - proceed to next step
    if (errors.length) {
        res.status(422).json({ validationErrors: errors });
      } else {
        next();
      }
  }
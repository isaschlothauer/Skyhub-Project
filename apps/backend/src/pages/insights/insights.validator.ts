import { Request, Response, NextFunction } from "express";
import { body, validationResult } from "express-validator";

export interface InputData {
  founding: number;
  headquarter: string;
  employees: string;
  profits: string;
  destinations: string;
  callsign: string;
  assessments_link: string;
  salary_captain_max: number;
  salary_captain_avg: number;
  salary_captain_min: number;
  salary_sfo_max: number;
  salary_sfo_avg: number;
  salary_sfo_min: number;
  salary_fo_max: number;
  salary_fo_avg: number;
  salary_fo_min: number;
  salary_so_max: number;
  salary_so_avg: number;
  salary_so_min: number;
}

export const insightsValidator = [
  body("founding").isInt({ min: 1900, max: new Date().getFullYear() }).escape(),
  body("headquarter").isString().escape(),
  body("employees").isString().escape(),
  body("profits").isString().escape(),
  body("destinations").isString().escape(),
  body("callsign").isString().escape(),
  body("assessments_link").optional({ checkFalsy: true }).isURL().escape(),
  body("salary_captain_max")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_captain_avg")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_captain_min")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_sfo_max")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_sfo_avg")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_sfo_min")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_fo_max")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_fo_avg")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_fo_min")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),

  body("salary_so_max")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),
  body("salary_so_avg")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),
  body("salary_so_min")
    .isInt({ min: 1000, max: 10000000 })
    .optional({ nullable: true })
    .escape(),
  (req: Request<{}, {}, InputData>, res: Response, next: NextFunction) => {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
      res.status(422).json({ validationErrors: errors.array() });
    } else {
      next();
    }
  },
];

CREATE TABLE specifications (
  Product_Code VARCHAR(10),
  T_Name VARCHAR(10),
  LSL DECIMAL(8, 2),
  USL DECIMAL(8, 2),
  Target DECIMAL(8, 2)
);

INSERT INTO specifications (Product_Code, T_Name, LSL, USL, Target) VALUES
  ('LIF001_B', 'T_height', 7.22, 10.57, 8.78),
  ('LIF001_Y', 'T_height', 6.78, 10.07, 8.36),
  ('LIF002_R', 'T_height', 7.22, 10.57, 8.78),
  ('LIF002_Y', 'T_height', 6.78, 10.07, 8.36),
  ('LIF001_B', 'T_weight', 360, 470, 410),
  ('LIF001_Y', 'T_weight', 329, 500, 410),
  ('LIF002_R', 'T_weight', 329, 500, 385),
  ('LIF002_Y', 'T_weight', 329, 500, 410);



CREATE TABLE production_sequence (
  Order_ID INT,
  Date DATE,
  Product_Family VARCHAR(10),
  Variant CHAR(1)
);

INSERT INTO production_sequence (Order_ID, Date, Product_Family, Variant) VALUES
  (1, '2022-05-14', 'LIF001', 'B'),
  (2, '2022-06-02', 'LIF001', 'Y'),
  (3, '2022-06-17', 'LIF001', 'B'),
  (4, '2022-07-01', 'LIF003', 'B'),
  (5, '2022-07-17', 'LIF002', 'R'),
  (6, '2022-08-05', 'LIF002', 'Y'),
  (7, '2022-08-19', 'LIF002', 'G'),
  (8, '2022-09-01', 'LIF001', 'G'),
  (9, '2022-09-15', 'LIF002', 'Y');



CREATE TABLE measurements (
  Lot_No VARCHAR(10),
  Unit_No INT,
  Product_Code VARCHAR(10),
  T_Height DECIMAL(8, 3),
  T_Weight DECIMAL(8, 3)
);

INSERT INTO measurements (Lot_No, Unit_No, Product_Code, T_Height, T_Weight) VALUES
  ('DLS0081', 1, 'LIF001_B', 8.644, 384.63),
  ('DLS0081', 2, 'LIF001_B', 9.228, 384.63),
  ('DLS0081', 3, 'LIF001_B', 8.811, 385.19),
  ('DLS0081', 4, 'LIF001_B', 9.08, 385.19),
  ('DLS0082', 1, 'LIF001_Y', 10.549, 375),
  ('DLS0082', 2, 'LIF001_Y', 10.524, 378.89),
  ('DLS0082', 3, 'LIF001_Y', 9.028, 386.11),
  ('DLS0082', 4, 'LIF001_Y', 10.973, 391.3),
  ('DNM0021', 1, 'LIF002_R', 10.571, 289.19),
  ('DNM0021', 2, 'LIF002_R', 8.7, 320.43),
  ('DNM0021', 3, 'LIF002_R', 8.652, 323.2),
  ('DNM0021', 4, 'LIF002_R', 9.308, 326.07),
  ('DNM0022', 1, 'LIF002_Y', 8.455, 516.11),
  ('DNM0022', 2, 'LIF002_Y', 7.521, 521.48),
  ('DNM0022', 3, 'LIF002_Y', 8.301, 526.48),
  ('DNM0022', 4, 'LIF002_Y', 8.482, 531.11);






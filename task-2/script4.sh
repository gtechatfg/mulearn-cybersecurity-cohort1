#!/bin/bash

curl -X POST http://gincy.pythonanywhere.com/login -H "Authorization: Bearer mt0dgHmLJMVQhvjpNXDyA83vA_PxH23Y" -H "Content-Type: application/json" --data-binary @- <<DATA
{
  "Id": 12345,
  "Customer": "alice",
  "Quantity": 1,
  "Price": 10.00
}
DATA

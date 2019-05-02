# Poll Booth Api

## API end-points

| Verb   | URI Pattern             | Controller#Action    |
|--------|-------------------------|----------------------|
| GET    | `/surveys`           | `surveys#index`   |
| POST   | `/surveys`           | `surveys#create`  |
| GET    | `/surveys/:id`       | `surveys#show`    |
| PATCH  | `/surveys/:id`       | `surveys#update`  |
| DELETE | `/surveys/:id`       | `surveys#destroy` |
| GET    | `/options`           |`options#index`        |
| POST   | `/options`           |`options#create`       |
| GET    | `/options/:id`       |`options#show`         |
| PATCH  | `/options/:id`       |`options#update`       |
| DELETE | `/options/:id`       |`options#destroy`      |

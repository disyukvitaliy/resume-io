### Intro

This project is backend engineer challenge for the https://resume.io/ company.

https://www.notion.so/Backend-Engineer-Challenge-95f1574344d84437ba978b21832cd162

### Development

1. Set SSH key on Github using instructions here: https://docs.github.com/en/authentication/connecting-to-github-with-ssh
2. Clone the project

```sh
git clone git@github.com:disyukvitaliy/resume-io.git
cd resume-io
```

3. Make sure you have docker-compose installed or install it https://docs.docker.com/compose/install/

```sh
docker-compose -v
```

4. Build the project

```sh
docker-compose build
```

5. Set up database and fill it with test data

```sh
docker-compose run --rm backend rake db:create db:migrate db:seed
```

6. Run specs

```sh
docker-compose run --rm backend rspec
```

7. Start the project

```sh
docker-compose up
```

8. Open the project in browser http://localhost/how-to-write-a-resume

### Thoughts

I decided not to use data structure suggested in instructions.
I don't think it is a good idea to store navigation info in a post model.
And I did not even see the reason why post must be a parent or a child.

I think post must contain data only about itself.
And there should be the model or group of models which should be responsible for storing data about navigation and relationships between posts.
It is all about single responsibility principle.
In my case database takes care about maintaining relations.
For example it deletes routs if post it refers to is deleted.

Although for such an approach we must pay some price.
We have some redundancy storing the full path in PostRouterItem.
It will be a little bit inconvenient for admins to maintain such routing system.
But as an advantage we have highly flexible structure.
For example we can use the same post in many different navigations or post may be referred to using different paths

The project is not completed yet.
There is lot of work to do
1. More tests
2. View objects
3. Extra column to maintain navigation order. May be "weight"
4. There is always improvements to do ... 🤷‍♂️
# Joestar API

Ruby on Rails 6  API.

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.1.2
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.x
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 (dev) / PostgreSQL (prod)
    </td>
  </tr>
</table>

## Initial settings to run the project

```bash
# clone the project
git clone https://github.com/JOESTAR117/joestar-api
# enter the cloned directory
cd joestar-api
# install Ruby on Rails dependencies
bundle install --without production
# create the development and test databases
rails db:create
# create the tables
rails db:migrate
# run the project
rails s
```
```The backend is available at `http://localhost:3000```.


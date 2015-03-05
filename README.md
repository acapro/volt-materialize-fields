# Volt::Fields for Materialize

This is a modified version of Volt-Fields to work with Materializecss

Provides controls for text and textarea fields (at the moment) with the following:

1. the necessary html for materialize
2. mark the fields when the blur event happens
3. change line color to green or red when validating
3. display any marked errors within the label
4. add an icon if specified in attributes

## Installation

This gem requires Volt -v '0.8.27.beta3' or higher and volt-materialize 

Add this line to your application's Gemfile:

    gem 'volt-materialze-fields'

Add the fields component to your application's `app/main/config/dependencies.rb`:

    component 'fields'

And then execute:

    $ bundle

### Example for user fields
    <:fields:text icon="mdi-communication-email" label="E-mail" type="email" value="{{ _email }}" />
    <:fields:text icon="mdi-communication-vpn-key" label="Password" type="password" value="{{ _password }}" />

## Contributing

1. Fork it ( http://github.com/acapro/volt-materialize-fields/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
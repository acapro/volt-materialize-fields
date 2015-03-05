# Volt::Fields for Materialize

This is a modified version of Volt-Fields to work with Materializecss

Provides controls for text and textarea fields (at the moment) with the following:

1. the necessary html for materialize
2. mark the fields when the blur event happens
3. change line color to green or red when validating
3. display any marked errors within the label
4. add an icon if specified in attributes

### Example for user fields
    <:fields:text icon="mdi-communication-email" label="E-mail" type="email" value="{{ _email }}" />
    <:fields:text icon="mdi-communication-vpn-key" label="Password" type="password" value="{{ _password }}" />
package MyApp;

use Mojo::Base 'Mojolicious';

sub startup {

  my $self = shift;
  # Router
  my $r = $self->routes;

  # Route
  $r->get('/welcome')->to(controller => 'foo', action => 'welcome');

}

package MyApp::Controller::Foo;
use Mojo::Base 'Mojolicious::Controller';

# Action
sub welcome {

  my $self = shift;

  # Render response
  $self->render( template => 'welcome', user => 'swat' );

}

package main;

require Mojolicious::Commands;

Mojolicious::Commands->start_app('MyApp');

1;

__DATA__

@@ welcome.html.ep

<%= $user %> welcome aboard!


use Mojo::Base -strict;
use Test::More;
use lib 't/lib';
use MyModel::Menu;

isa_ok 'MyModel::Menu', 'Mandel::Document';
isa_ok 'MyModel::Menu', 'Mojo::Base';

can_ok 'MyModel::Menu', 'field';
can_ok 'MyModel::Menu', 'soup';

my $obj = MyModel::Menu->new;

ok ! $obj->updated, 'object has not been updated';
is $obj->soup('noodle'), $obj, 'setter returns instance';
is $obj->soup, 'noodle', 'getter returns value';
ok $obj->updated, 'object reports that it has been updated';

is( MyModel::Menu->description->collection, 'menu', 'import arg is collection name' );

done_testing;


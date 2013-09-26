use Mojo::Base -base;
use Test::More;
use lib 't/lib';
use MyModel;

my $model = MyModel->new;

is_deeply $model->namespaces, ['MyModel'], 'got namespaces';
is_deeply [$model->all_document_names], ['Menu'], 'got document names';
is $model->class_for('Menu'), 'MyModel::Menu', 'got class_for Menu';

done_testing;

# Ruby Lab

Focused Ruby language practice and small programming experiments.

The repository uses Ruby 4.0.6. Language references point to the
[official Ruby 4.0 documentation](https://docs.ruby-lang.org/en/4.0/).

## Structure

- [`ruby-literacy/`](ruby-literacy/) contains focused language examples grouped by topic.
- [`programs/`](programs/) contains small runnable programs that apply those concepts.

## Learning Map

### Fundamentals

- Examples: [variable naming](ruby-literacy/fundamentals/variable_naming_rules.rb),
  [constants](ruby-literacy/fundamentals/constants.rb), and
  [local scope](ruby-literacy/fundamentals/local_variable_scope.rb)
- Reference: [assignment and variables](https://docs.ruby-lang.org/en/4.0/syntax/assignment_rdoc.html)

### Control Flow Techniques

- Examples: [`if`, `elsif`, and `else`](ruby-literacy/control_flow_techniques/if_elsif_else.rb)
  for entitlement decisions in a reading application, and
  [conditional modifiers](ruby-literacy/control_flow_techniques/conditional_modifiers.rb), and
  [`not` and `!` negation](ruby-literacy/control_flow_techniques/not_vs_bang.rb), and
  [conditional-body assignment](ruby-literacy/control_flow_techniques/conditional_body_assignment.rb), and
  [`case` and `when` branches](ruby-literacy/control_flow_techniques/case_when.rb)
- Reference: [control expressions](https://docs.ruby-lang.org/en/4.0/syntax/control_expressions_rdoc.html)

### Objects and Classes

- Examples: [class definition](ruby-literacy/objects_and_classes/define_a_class.rb),
  [object creation](ruby-literacy/objects_and_classes/object_creation.rb),
  [default object behavior](ruby-literacy/objects_and_classes/object_default_behavior.rb),
  [object references](ruby-literacy/objects_and_classes/object_references.rb),
  [object initialization](ruby-literacy/objects_and_classes/initialize_obj_with_state.rb),
  [instance variables](ruby-literacy/objects_and_classes/instance_var_and_obj_state.rb),
  [setter methods](ruby-literacy/objects_and_classes/setter_methods.rb),
  [validated setters](ruby-literacy/objects_and_classes/validated_setter.rb),
  [attribute accessors](ruby-literacy/objects_and_classes/attribute_accessors.rb), and
  [anonymous classes](ruby-literacy/objects_and_classes/anonymous_classes.rb),
  [class variables](ruby-literacy/objects_and_classes/class_variables.rb), and
  [class instance variables](ruby-literacy/objects_and_classes/class_instance_variables.rb)
- References: [classes](https://docs.ruby-lang.org/en/4.0/Class.html) and
  [modules and classes](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html), and
  [assignment and variables](https://docs.ruby-lang.org/en/4.0/syntax/assignment_rdoc.html)

### Default Object Self and Scope

- Examples: [implicit `self` in method calls](ruby-literacy/default_object_self_and_scope/method_calls_on_self.rb)
  and [global and local variable scope](ruby-literacy/default_object_self_and_scope/scope_and_visibility.rb)
- References: [calling methods and receivers](https://docs.ruby-lang.org/en/4.0/syntax/calling_methods_rdoc.html)
  and [scope](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html)

### Methods and Inheritance

- Examples: [method arguments](ruby-literacy/methods_and_inheritance/method_arguments.rb),
  [inheritance](ruby-literacy/methods_and_inheritance/inheritance.rb),
  [method hierarchies](ruby-literacy/methods_and_inheritance/method_hierarchies.rb), and
  [`method_missing` and `super`](ruby-literacy/methods_and_inheritance/method_missing_and_super.rb), and
  [private methods](ruby-literacy/methods_and_inheritance/private_methods.rb)
- References: [method definitions and arguments](https://docs.ruby-lang.org/en/4.0/syntax/methods_rdoc.html),
  [inheritance, visibility, and `super`](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html),
  [`Method`](https://docs.ruby-lang.org/en/4.0/Method.html), and
  [`BasicObject#method_missing`](https://docs.ruby-lang.org/en/4.0/BasicObject.html)

### Modules

- Examples: [module creation](ruby-literacy/modules/creating_a_module.rb),
  [extending an object](ruby-literacy/modules/extend_modules.rb),
  [the `Stacklike` mixin](ruby-literacy/modules/stacklike.rb), and
  [a stack using the mixin](ruby-literacy/modules/stack.rb)
- Reference: [modules and mixins](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html)

### Loading and Dependencies

- Examples: [`require_relative`](ruby-literacy/loading_and_dependencies/load_demo.rb),
  [the loaded file](ruby-literacy/loading_and_dependencies/loadee.rb), and
  [a gem dependency](ruby-literacy/loading_and_dependencies/gems_demo.rb)
- References: [`Kernel`](https://docs.ruby-lang.org/en/4.0/Kernel.html) and
  [RubyGems guides](https://guides.rubygems.org/)

## Programs

- [Interactive Celsius-to-Fahrenheit conversion](programs/c2f.rb)
- [File-based Celsius-to-Fahrenheit conversion](programs/c2f_file.rb)
- [Getter and setter example](programs/setter_and_getter.rb)
- [Rake tasks](programs/Rakefile)

Program data is kept in [`programs/input_files/`](programs/input_files/) and
[`programs/output_files/`](programs/output_files/).

## Setup

```bash
mise install
bundle install
```

Run an example from the repository root:

```bash
bundle exec ruby ruby-literacy/methods_and_inheritance/method_hierarchies.rb
```

Run the linter:

```bash
bundle exec rubocop --cache false
```

# Ruby Lab

An evolving personal Ruby lab for developing deeper language fluency.

The repository uses Ruby 4.0.6. Language references point to the
[official Ruby 4.0 documentation](https://docs.ruby-lang.org/en/4.0/).

## Structure

- [`ruby-literacy/`](ruby-literacy/) contains focused language examples grouped by topic.
- [`programs/`](programs/) contains runnable programs that apply those concepts.

## Learning Map

### Fundamentals

- [Variable naming](ruby-literacy/fundamentals/variable_naming_rules.rb)
- [Constants](ruby-literacy/fundamentals/constants.rb)
- [Local scope](ruby-literacy/fundamentals/local_variable_scope.rb)

Reference: [Assignment and variables](https://docs.ruby-lang.org/en/4.0/syntax/assignment_rdoc.html).

### Control Flow Techniques

- [`if`, `elsif`, and `else`](ruby-literacy/control_flow_techniques/if_elsif_else.rb):
  make migration-execution decisions.
- [Conditional modifiers](ruby-literacy/control_flow_techniques/conditional_modifiers.rb)
- [`not` and `!` negation](ruby-literacy/control_flow_techniques/not_vs_bang.rb)
- [Conditional-body assignment](ruby-literacy/control_flow_techniques/conditional_body_assignment.rb)
- [`case` and `when` branches](ruby-literacy/control_flow_techniques/case_when.rb)
- [Case equality with ranges](ruby-literacy/control_flow_techniques/case_equality.rb)
- [Custom case equality with SQLSTATE categories](ruby-literacy/control_flow_techniques/custom_case_equality.rb)
- [Retry controller using `loop`, `next`, and `break`](ruby-literacy/control_flow_techniques/loop_retry_controller.rb):
  limit attempts and stop on success or permanent failure.
- [Replica lag monitor using `while`](ruby-literacy/control_flow_techniques/while_replica_lag_monitor.rb):
  process simulated samples while lag exceeds 10 ms and samples remain.
- [Replica lag monitor using `until`](ruby-literacy/control_flow_techniques/until_replica_lag_monitor.rb):
  stop when lag reaches 10 ms or less, or samples run out.

Reference: [Control expressions](https://docs.ruby-lang.org/en/4.0/syntax/control_expressions_rdoc.html).

### Objects and Classes

- [Class definition](ruby-literacy/objects_and_classes/define_a_class.rb)
- [Object creation](ruby-literacy/objects_and_classes/object_creation.rb)
- [Default object behavior](ruby-literacy/objects_and_classes/object_default_behavior.rb)
- [Object references](ruby-literacy/objects_and_classes/object_references.rb)
- [Object initialization](ruby-literacy/objects_and_classes/initialize_obj_with_state.rb)
- [Instance variables](ruby-literacy/objects_and_classes/instance_var_and_obj_state.rb)
- [Setter methods](ruby-literacy/objects_and_classes/setter_methods.rb)
- [Validated setters](ruby-literacy/objects_and_classes/validated_setter.rb)
- [Attribute accessors](ruby-literacy/objects_and_classes/attribute_accessors.rb)
- [Anonymous classes](ruby-literacy/objects_and_classes/anonymous_classes.rb)
- [Class variables](ruby-literacy/objects_and_classes/class_variables.rb)
- [Class instance variables](ruby-literacy/objects_and_classes/class_instance_variables.rb)

References: [Classes](https://docs.ruby-lang.org/en/4.0/Class.html),
[modules and classes](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html),
[assignment and variables](https://docs.ruby-lang.org/en/4.0/syntax/assignment_rdoc.html).

### Default Object Self and Scope

- [Implicit `self` in method calls](ruby-literacy/default_object_self_and_scope/method_calls_on_self.rb)
- [Global and local variable scope](ruby-literacy/default_object_self_and_scope/scope_and_visibility.rb)

References: [Calling methods and receivers](https://docs.ruby-lang.org/en/4.0/syntax/calling_methods_rdoc.html),
[scope](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html).

### Methods and Inheritance

- [Method arguments](ruby-literacy/methods_and_inheritance/method_arguments.rb)
- [Inheritance](ruby-literacy/methods_and_inheritance/inheritance.rb)
- [Method hierarchies](ruby-literacy/methods_and_inheritance/method_hierarchies.rb)
- [`method_missing` and `super`](ruby-literacy/methods_and_inheritance/method_missing_and_super.rb)
- [Private methods](ruby-literacy/methods_and_inheritance/private_methods.rb)

References: [Method definitions and arguments](https://docs.ruby-lang.org/en/4.0/syntax/methods_rdoc.html),
[inheritance, visibility, and `super`](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html),
[`Method`](https://docs.ruby-lang.org/en/4.0/Method.html),
[`BasicObject#method_missing`](https://docs.ruby-lang.org/en/4.0/BasicObject.html).

### Modules

- [Module creation](ruby-literacy/modules/creating_a_module.rb)
- [Extending an object](ruby-literacy/modules/extend_modules.rb)
- [The `Stacklike` mixin](ruby-literacy/modules/stacklike.rb)
- [A stack using the mixin](ruby-literacy/modules/stack.rb)

Reference: [Modules and mixins](https://docs.ruby-lang.org/en/4.0/syntax/modules_and_classes_rdoc.html).

### Loading and Dependencies

- [`require_relative`](ruby-literacy/loading_and_dependencies/load_demo.rb)
- [The loaded file](ruby-literacy/loading_and_dependencies/loadee.rb)
- [A gem dependency](ruby-literacy/loading_and_dependencies/gems_demo.rb)

References: [`Kernel`](https://docs.ruby-lang.org/en/4.0/Kernel.html),
[RubyGems guides](https://guides.rubygems.org/).

### Algorithms

- [Iterative binary search](ruby-literacy/control_flow_techniques/binary_search.rb):
  search a sorted array using a `while` loop.

## Programs

- [Interactive Celsius-to-Fahrenheit conversion](programs/interactive_celsius_to_fahrenheit.rb)
- [File-based Celsius-to-Fahrenheit conversion](programs/file_based_celsius_to_fahrenheit.rb)
- [Migration window getters](programs/setter_and_getter.rb)
- [Rake tasks](programs/Rakefile)

Program data is kept in [`programs/input_files/`](programs/input_files/) and
[`programs/output_files/`](programs/output_files/). Generated output files
belong in the output directory.

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

Run the dependency audit:

```bash
bundle exec bundle-audit check --update
```

## Quality Checks

Pull requests run RuboCop, Bundler Audit, and Gitleaks.

## Learning Resources and Attribution

This repository is a personal Ruby lab for developing deeper language fluency.
It is informed in part by these resources:

- [*The Well-Grounded Rubyist, Fourth Edition*](https://www.manning.com/books/the-well-grounded-rubyist-fourth-edition)
  by David A. Black and Joseph Leo III.
- [*Grokking Algorithms, Second Edition*](https://www.manning.com/books/grokking-algorithms-second-edition)
  by Aditya Y. Bhargava.

Examples use my own scenarios and commentary. The books and their original
examples remain the property of their respective copyright holders. The
[MIT License](LICENSE) applies to my contributions to this repository.

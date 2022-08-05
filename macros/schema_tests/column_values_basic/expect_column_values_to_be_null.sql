{% test expect_column_values_to_be_null(model, column_name, row_condition=None, query_context=None) %}

{% set expression = column_name ~ " is null" %}

{{ dbt_expectations.expression_is_true(model,
                                        expression=expression,
                                        group_by_columns=None,
                                        row_condition=row_condition,
                                        query_context=query_context
                                        )
                                        }}
{% endtest %}

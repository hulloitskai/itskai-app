# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rgeo-activerecord` gem.
# Please instead update this file by running `bin/tapioca gem rgeo-activerecord`.

# source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#248
module Arel
  class << self
    # source://activerecord/7.0.3.1/lib/arel.rb#46
    def arel_node?(value); end

    # source://activerecord/7.0.3.1/lib/arel.rb#50
    def fetch_attribute(value, &block); end

    # Create a spatial constant node.
    # This node wraps a spatial value (such as an RGeo feature or a text
    # string in WKT format). It supports chaining with the functions
    # defined by RGeo::ActiveRecord::SpatialExpressions.
    #
    # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#253
    def spatial(arg); end

    # source://activerecord/7.0.3.1/lib/arel.rb#38
    def sql(raw_sql); end

    # source://activerecord/7.0.3.1/lib/arel.rb#42
    def star; end
  end
end

# source://activerecord/7.0.3.1/lib/arel/attributes/attribute.rb#32
Arel::Attribute = Arel::Attributes::Attribute

class Arel::Attributes::Attribute < ::Struct
  include ::RGeo::ActiveRecord::SpatialExpressions
end

# source://activerecord/7.0.3.1/lib/arel.rb#29
Arel::VERSION = T.let(T.unsafe(nil), String)

module Arel::Visitors; end

# source://activerecord-postgis-adapter/8.0.1/lib/active_record/connection_adapters/postgis/arel_tosql.rb#24
Arel::Visitors::PostGISSuperclass = Arel::Visitors::PostgreSQL

class Arel::Visitors::Visitor
  # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#6
  def initialize; end

  # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#10
  def accept(object, collector = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#79
  def visit_RGeo_ActiveRecord_SpatialConstantNode(node, collector); end

  private

  # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#15
  def dispatch; end

  # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#23
  def get_dispatch_cache; end

  # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#27
  def visit(object, collector = T.unsafe(nil)); end

  class << self
    # source://activerecord/7.0.3.1/lib/arel/visitors/visitor.rb#17
    def dispatch_cache; end
  end
end

# source://rgeo-activerecord//lib/rgeo/active_record/version.rb#3
module RGeo; end

# source://rgeo-activerecord//lib/rgeo/active_record/version.rb#4
module RGeo::ActiveRecord
  class << self
    # Return a feature type module given a string type.
    #
    # source://rgeo-activerecord//lib/rgeo/active_record/common_adapter_elements.rb#6
    def geometric_type_from_name(name); end

    # Returns true if spatial expressions (i.e. the methods in the
    # SpatialExpressions module) are supported.
    #
    # @return [Boolean]
    #
    # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#7
    def spatial_expressions_supported?; end
  end
end

# This module is mixed into all geometry objects. It provides an
# as_json method so that ActiveRecord knows how to generate JSON
# for a geometry-valued field.
#
# source://rgeo-activerecord//lib/rgeo/active_record/geometry_mixin.rb#9
module RGeo::ActiveRecord::GeometryMixin
  # Serializes this object as JSON for ActiveRecord.
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/geometry_mixin.rb#48
  def as_json(opts = T.unsafe(nil)); end

  class << self
    # Given a feature, returns an object that can be serialized as JSON
    # (i.e. usually a hash or string), using the current json_generator.
    # This is used to generate JSON for geometry-valued ActiveRecord
    # fields by default.
    #
    # source://rgeo-activerecord//lib/rgeo/active_record/geometry_mixin.rb#42
    def generate_json(geom); end

    # Set the style of JSON generation used for geometry fields in an
    # ActiveRecord model by default. You may pass nil to use
    # DEFAULT_JSON_GENERATOR, a proc that takes a geometry as the
    # argument and returns an object that can be converted to JSON
    # (i.e. usually a hash or string), or one of the following symbolic
    # values:
    #
    # <tt>:wkt</tt>::
    #   Well-known text format. (Same as DEFAULT_JSON_GENERATOR.)
    # <tt>:geojson</tt>::
    #   GeoJSON format. Requires the rgeo-geojson gem.
    #
    # source://rgeo-activerecord//lib/rgeo/active_record/geometry_mixin.rb#27
    def set_json_generator(value = T.unsafe(nil), &block); end
  end
end

# The default JSON generator Proc. Renders geometry fields as WKT.
#
# source://rgeo-activerecord//lib/rgeo/active_record/geometry_mixin.rb#11
RGeo::ActiveRecord::GeometryMixin::DEFAULT_JSON_GENERATOR = T.let(T.unsafe(nil), Proc)

# This node wraps an RGeo feature and gives it spatial expression constructors.
#
# source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#62
class RGeo::ActiveRecord::SpatialConstantNode
  include ::RGeo::ActiveRecord::SpatialExpressions

  # The delegate should be the RGeo feature.
  #
  # @return [SpatialConstantNode] a new instance of SpatialConstantNode
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#66
  def initialize(delegate); end

  # Return the RGeo feature
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#71
  def delegate; end
end

# A set of spatial expression builders.
# These methods can be chained off other spatial expressions to form
# complex expressions.
#
# source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#14
module RGeo::ActiveRecord::SpatialExpressions
  # --
  # Surface functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#196
  def st_area(units = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#40
  def st_asbinary; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#36
  def st_astext; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#56
  def st_boundary; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#124
  def st_buffer(distance, units = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#202
  def st_centroid; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#88
  def st_contains(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#130
  def st_convexhull; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#80
  def st_crosses(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#112
  def st_difference(rhs); end

  # --
  # Geometry functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#28
  def st_dimension; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#68
  def st_disjoint(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#102
  def st_distance(rhs, units = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#162
  def st_endpoint; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#60
  def st_envelope; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#64
  def st_equals(rhs); end

  # --
  # Polygon functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#214
  def st_exteriorring; end

  # --
  # Generic functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#19
  def st_function(function, *args); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#236
  def st_geometryn(n); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#32
  def st_geometrytype; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#224
  def st_interiorringn(n); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#108
  def st_intersection(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#72
  def st_intersects(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#166
  def st_isclosed; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#48
  def st_isempty; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#170
  def st_isring; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#52
  def st_issimple; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#174
  def st_length(units = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#150
  def st_m; end

  # --
  # GeometryCollection functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#232
  def st_numgeometries; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#218
  def st_numinteriorrings; end

  # --
  # LineString functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#184
  def st_numpoints; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#92
  def st_overlaps(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#188
  def st_pointn(n); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#206
  def st_pointonsurface; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#96
  def st_relate(rhs, matrix = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#44
  def st_srid; end

  # --
  # Curve functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#158
  def st_startpoint; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#120
  def st_symdifference(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#76
  def st_touches(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#116
  def st_union(rhs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#84
  def st_within(rhs); end

  # --
  # Point functions
  # ++
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#138
  def st_x; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#142
  def st_y; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_expressions.rb#146
  def st_z; end
end

# source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#5
class RGeo::ActiveRecord::SpatialFactoryStore
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  # @return [SpatialFactoryStore] a new instance of SpatialFactoryStore
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#11
  def initialize; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#32
  def clear; end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#20
  def default(attrs = T.unsafe(nil)); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#24
  def default=(factory); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#28
  def factory(attrs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#16
  def register(factory, attrs = T.unsafe(nil)); end

  # Returns the value of attribute registry.
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#9
  def registry; end

  # Sets the attribute registry
  #
  # @param value the value to set the attribute registry to.
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#9
  def registry=(_arg0); end

  private

  # Match attrs to the closest equal to or less specific factory
  #
  # That means that attrs can at most be matched to an Entry with the same
  # number of keys as it. But could match with a factory with only 1 key
  # in its attrs.
  #
  # Examples:
  #   attrs = {sql_type: "geometry" }, entry_attrs = {sql_type: "geometry", geo_type: "point"}
  #   is not a match because the entry is more specific than attrs
  #
  #   attrs = {sql_type: "geometry", geo_type: "point"}, entry_attrs = {sql_type: "geometry"}
  #   is a match because the entry is less specific than attrs and would be the fallback for all "geometry" types
  #
  #   attrs = {sql_type: "geometry", geo_type: "point"}, entry_attrs = {sql_type: "geometry", geo_type: "linestring"}
  #   is not a match because there are mismatched keys
  #
  # If there is no match, nil is returned
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#76
  def closest_factory(attrs); end

  # Returns number of common key/values
  # or -1 if oth is bigger than attrs, or they have a mismatched key/value pair
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#92
  def cmp_attrs(attrs, oth); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#38
  def default_for_attrs(attrs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#54
  def filter_attrs(attrs); end

  # source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#46
  def to_factory_attrs(attrs); end
end

# source://rgeo-activerecord//lib/rgeo/active_record/spatial_factory_store.rb#7
class RGeo::ActiveRecord::SpatialFactoryStore::Entry < ::Struct
  # Returns the value of attribute attrs
  #
  # @return [Object] the current value of attrs
  def attrs; end

  # Sets the attribute attrs
  #
  # @param value [Object] the value to set the attribute attrs to.
  # @return [Object] the newly set value
  def attrs=(_); end

  # Returns the value of attribute factory
  #
  # @return [Object] the current value of factory
  def factory; end

  # Sets the attribute factory
  #
  # @param value [Object] the value to set the attribute factory to.
  # @return [Object] the newly set value
  def factory=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# A NamedFunction subclass that keeps track of the spatial-ness of
# the arguments and return values, so that it can provide context to
# visitors that want to interpret syntax differently when dealing with
# spatial elements.
#
# source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#97
class RGeo::ActiveRecord::SpatialNamedFunction < ::Arel::Nodes::NamedFunction
  include ::RGeo::ActiveRecord::SpatialExpressions

  # @return [SpatialNamedFunction] a new instance of SpatialNamedFunction
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#100
  def initialize(name, expr, spatial_flags = T.unsafe(nil), aliaz = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#109
  def spatial_argument?(index); end

  # @return [Boolean]
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#105
  def spatial_result?; end
end

# A set of common Arel visitor hacks for spatial ToSql visitors.
# Generally, a spatial ActiveRecord adapter should provide a custom
# ToSql Arel visitor that includes and customizes this module.
# See the existing spatial adapters (i.e. postgis, spatialite,
# mysqlspatial, and mysql2spatial) for usage examples.
#
# source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#11
module RGeo::ActiveRecord::SpatialToSql
  # Map a standard OGC SQL function name to the actual name used by
  # a particular database. This method should take a name and
  # return either the changed name or the original name.
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#16
  def st_func(standard_name); end

  # Visit the SpatialNamedFunction node. This operates similarly to
  # the standard NamedFunction node, but it performs function name
  # mapping for the database, and it also uses the type information
  # in the node to determine when to cast string arguments to WKT,
  #
  # source://rgeo-activerecord//lib/rgeo/active_record/arel_spatial_queries.rb#25
  def visit_RGeo_ActiveRecord_SpatialNamedFunction(node, collector); end

  # Generates SQL for a spatial node.
  # The node must be a string (in which case it is treated as WKT),
  # an RGeo feature, or a spatial attribute.
  #
  # source://activerecord-postgis-adapter/8.0.1/lib/active_record/connection_adapters/postgis/arel_tosql.rb#8
  def visit_in_spatial_context(node, collector); end
end

# source://rgeo-activerecord//lib/rgeo/active_record/version.rb#5
RGeo::ActiveRecord::VERSION = T.let(T.unsafe(nil), String)

class RGeo::Cartesian::GeometryCollectionImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::LineImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::LineStringImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::LinearRingImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::MultiLineStringImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiCurve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::MultiPointImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::MultiPolygonImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiSurface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::PointImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Cartesian::PolygonImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Surface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedGeometryCollectionImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedLineImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedLineStringImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedLinearRingImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedMultiLineStringImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiCurve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedMultiPointImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedMultiPolygonImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiSurface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedPointImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::ProjectedPolygonImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Surface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalGeometryCollectionImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalLineImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalLineStringImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalLinearRingImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Curve
  include ::RGeo::Feature::LineString
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalMultiLineStringImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiCurve
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalMultiPointImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalMultiPolygonImpl
  include ::RGeo::Feature::Geometry
  include ::Enumerable
  include ::RGeo::Feature::GeometryCollection
  include ::RGeo::Feature::MultiSurface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalPointImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geographic::SphericalPolygonImpl
  include ::RGeo::Feature::Geometry
  include ::RGeo::Feature::Surface
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMGeometryCollectionImpl
  include ::RGeo::Feature::Instance
  include ::Enumerable
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMGeometryImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMLineImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMLineStringImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMLinearRingImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMMultiLineStringImpl
  include ::RGeo::Feature::Instance
  include ::Enumerable
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMMultiPointImpl
  include ::RGeo::Feature::Instance
  include ::Enumerable
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMMultiPolygonImpl
  include ::RGeo::Feature::Instance
  include ::Enumerable
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMPointImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

class RGeo::Geos::ZMPolygonImpl
  include ::RGeo::Feature::Instance
  include ::RGeo::ActiveRecord::GeometryMixin
end

# source://rgeo/2.4.0/lib/rgeo/version.rb#4
RGeo::VERSION = T.let(T.unsafe(nil), String)

package mobile.entity.common;

import javax.persistence.*;

import mobile.entity.schema.AbstractEntity;
import mobile.entity.schema.Multicompany;

/**
* The persistent class for the ENTITY_FIELD database table.
* Values of entity fields
*/
@Entity
@Table(name="ENTITY_FIELD")
public class EntityField extends AbstractEntity implements Multicompany{
private static final long serialVersionUID = 1L;

@EmbeddedId
private EntityFieldPk pk;

/**
* Field order
*/
@Column(name="FIELD_ORDER", unique=true, nullable=false)
private Integer fieldOrder;

/**
* Data type of field
*/
@Column(name="DATA_TYPE_ID", nullable=false)
private String dataTypeId;

/**
* Data size of field
*/
@Column(name="DATA_SIZE", nullable=false)
private Integer dataSize;

/**
* Data scale of field
*/
@Column(name="DATA_SCALE", nullable=false)
private Integer dataScale;

/**
* Primary key
*/
@Column(name="PRIMARY_KEY", nullable=false)
private Boolean primaryKey;

/**
* Unique key
*/
@Column(name="UNIQUE_KEY", nullable=false)
private Boolean uniqueKey;

/**
* Nullable
*/
@Column(name="NULLABLE", nullable=false)
private Boolean nullable;

/**
* Default value of field
*/
@Column(name="DEFAULT_VALUE", nullable=true)
private String defaultValue;

/**
* Sequential Id of field
*/
@Column(name="SEQUENTIAL_ID", nullable=true)
private String sequentialId;

/**
* Minimum value of field
*/
@Column(name="MINIMUM_VALUE", nullable=true)
private String minimumValue;

/**
* Maximum value of field
*/
@Column(name="MAXIMUM_VALUE", nullable=true)
private String maximumValue;

/**
* Description of field
*/
@Column(name="DESCRIPTION", nullable=true)
private String description;

public EntityField() {
}
public EntityField(EntityFieldPk pk) {
this.pk = pk;
}
public EntityField(EntityFieldPk pk,Integer fieldOrder,String dataTypeId,Integer dataSize,Integer dataScale,Boolean primaryKey,Boolean uniqueKey,Boolean nullable) {
this.pk = pk;
this.fieldOrder = fieldOrder;
this.dataTypeId = dataTypeId;
this.dataSize = dataSize;
this.dataScale = dataScale;
this.primaryKey = primaryKey;
this.uniqueKey = uniqueKey;
this.nullable = nullable;
}
public EntityFieldPk getPk() {
return this.pk;
}
public void setPk(EntityFieldPk pk) {
this.pk = pk;
}
public Integer getFieldOrder() {
return this.fieldOrder;
}
public void setFieldOrder(Integer fieldOrder) {
this.fieldOrder = fieldOrder;
}
public String getDataTypeId() {
return this.dataTypeId;
}
public void setDataTypeId(String dataTypeId) {
this.dataTypeId = dataTypeId;
}
public Integer getDataSize() {
return this.dataSize;
}
public void setDataSize(Integer dataSize) {
this.dataSize = dataSize;
}
public Integer getDataScale() {
return this.dataScale;
}
public void setDataScale(Integer dataScale) {
this.dataScale = dataScale;
}
public Boolean getPrimaryKey() {
return this.primaryKey;
}
public void setPrimaryKey(Boolean primaryKey) {
this.primaryKey = primaryKey;
}
public Boolean getUniqueKey() {
return this.uniqueKey;
}
public void setUniqueKey(Boolean uniqueKey) {
this.uniqueKey = uniqueKey;
}
public Boolean getNullable() {
return this.nullable;
}
public void setNullable(Boolean nullable) {
this.nullable = nullable;
}
public String getDefaultValue() {
return this.defaultValue;
}
public void setDefaultValue(String defaultValue) {
this.defaultValue = defaultValue;
}
public String getSequentialId() {
return this.sequentialId;
}
public void setSequentialId(String sequentialId) {
this.sequentialId = sequentialId;
}
public String getMinimumValue() {
return this.minimumValue;
}
public void setMinimumValue(String minimumValue) {
this.minimumValue = minimumValue;
}
public String getMaximumValue() {
return this.maximumValue;
}
public void setMaximumValue(String maximumValue) {
this.maximumValue = maximumValue;
}
public String getDescription() {
return this.description;
}
public void setDescription(String description) {
this.description = description;
}

@Override
public void setPk(Object pk) {
this.pk=(EntityFieldPk) pk;
}

@Override
public Object clone() throws CloneNotSupportedException {
EntityField copy = (EntityField) super.clone();
copy.setPk((EntityFieldPk) this.pk.clone());
return copy;
}

@Override
public String toString() {
return "ENTITY_FIELD:[" +
this.getPk().toString() + ", " +
this.getFieldOrder() + ", " +
this.getDataTypeId() + ", " +
this.getDataSize() + ", " +
this.getDataScale() + ", " +
this.getPrimaryKey() + ", " +
this.getUniqueKey() + ", " +
this.getNullable() + ", " +
this.getDefaultValue() + ", " +
this.getSequentialId() + ", " +
this.getMinimumValue() + ", " +
this.getMaximumValue() + ", " +
this.getDescription() + "]";
}
}

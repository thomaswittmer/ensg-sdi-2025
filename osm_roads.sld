<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
    
    <NamedLayer>
        <Name>osm_roads</Name>
        <UserStyle>
            <Title>OSM Road Styles</Title>
            <FeatureTypeStyle>
                <!-- Autoroutes -->
                <Rule>
                    <Name>Motorway</Name>
                    <Title>Autoroutes</Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>highway</ogc:PropertyName>
                            <ogc:Literal>motorway</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ff0000</CssParameter>
                            <CssParameter name="stroke-width">5</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
                
                <!-- Routes principales -->
                <Rule>
                    <Name>Primary</Name>
                    <Title>Routes primaires</Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>highway</ogc:PropertyName>
                            <ogc:Literal>primary</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#ff9900</CssParameter>
                            <CssParameter name="stroke-width">4</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
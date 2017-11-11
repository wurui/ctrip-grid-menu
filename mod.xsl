<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-grid-menu">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-grid-menu" ox-mod="ctrip-grid-menu">
            <xsl:for-each select="data/icon-menu/i">
            	<div class="group">
            		<xsl:for-each select="i">
            			<a class="grid" href="{href}">
            				<xsl:if test="icon !=''">
            					<xsl:attribute name="style">background-image:url(<xsl:value-of select="icon"/>)</xsl:attribute>
            				</xsl:if>
            				<xsl:value-of select="title"/>
            			</a>
            		</xsl:for-each>
            	</div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>

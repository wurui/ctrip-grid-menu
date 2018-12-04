<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-grid-menu">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-grid-menu" ox-mod="ctrip-grid-menu">
            <div class="group">
                <xsl:for-each select="data/ui-entry/i[position() &lt; 16]">
                	                		
        			<a class="grid" href="{href}">
                        <xsl:if test="position() mod 5 = 1">
                         <span class="bg-{format-number(position() div 5,'#' )}"></span>
                        </xsl:if>
        				<span><xsl:value-of select="title"/></span>
        			</a>
                	
                </xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>

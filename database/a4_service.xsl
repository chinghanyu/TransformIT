<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" exclude-result-prefixes="xsl ddwrt msxsl" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:ddwrt2="urn:frontpage:internal">
	<xsl:param name="dvt_adhocmode"></xsl:param>
	<xsl:param name="dvt_adhocfiltermode">xsl</xsl:param>
	<xsl:param name="dvt_fieldsort"></xsl:param>
	<xsl:param name="dvt_sortfield"></xsl:param>
	<xsl:param name="dvt_groupfield"></xsl:param>
	<xsl:param name="dvt_groupdisplay"></xsl:param>
	<xsl:param name="dvt_sortdir">ascending</xsl:param>
	<xsl:param name="dvt_groupdir">ascending</xsl:param>
	<xsl:param name="dvt_grouptype"></xsl:param>
	<xsl:param name="dvt_sorttype">text</xsl:param>
	<xsl:param name="dvt_groupsorttype">text</xsl:param>
	<xsl:param name="dvt_filterfield"></xsl:param>
	<xsl:param name="dvt_filterval"></xsl:param>
	<xsl:param name="dvt_filtertype"></xsl:param>
	<xsl:param name="dvt_firstrow">1</xsl:param>
	<xsl:param name="dvt_nextpagedata"></xsl:param>
	<xsl:param name="dvt_apos">'</xsl:param>
	<xsl:param name="filterParam"></xsl:param>
	<xsl:template match="/">
		<xsl:call-template name="dvt_1"/>
	</xsl:template>
	<xsl:template name="dvt_1.empty">
		<xsl:variable name="ViewEmptyText">There are no items to show in this view.</xsl:variable>
		<table border="0" width="100%">
			<tr>
				<td class="ms-vb">
					<xsl:value-of select="$ViewEmptyText"/>
				</td>
			</tr>
		</table>
	</xsl:template>
<xsl:template name="dvt_1">
<xsl:variable name="StyleName">Table</xsl:variable>
<xsl:variable name="Rows" select="/dataroot/service" />
<xsl:variable name="RowCount" select="count($Rows)" />
<xsl:variable name="IsEmpty" select="$RowCount = 0" />
<xsl:choose>
<xsl:when test="$IsEmpty">
<xsl:call-template name="dvt_1.empty" />
</xsl:when>
<xsl:otherwise>
				<table cellpadding="2" cellspacing="0" style="border-width: 0px" width="100%">
					<tr valign="top">
						<th class="ms-vh" nowrap="nowrap" style="height: 26px; border-style: solid; border-width: 1px">vender_service</th>
						<th class="ms-vh" nowrap="nowrap" style="height: 26px; border-style: solid; border-width: 1px">price</th>
						<th class="ms-vh" nowrap="nowrap" style="height: 26px; border-style: solid; border-width: 1px">delivery_center</th>
						<th class="ms-vh" nowrap="nowrap" style="height: 26px; border-style: solid; border-width: 1px">service_window_hour</th>
						<th class="ms-vh" nowrap="nowrap" style="height: 26px; border-style: solid; border-width: 1px">service_window_week</th>
					</tr>
<xsl:call-template name="dvt_1.body">
<xsl:with-param name="Rows" select="$Rows" />
<xsl:with-param name="FirstRow" select="1" />
<xsl:with-param name="LastRow" select="$RowCount" />
</xsl:call-template>
</table>
			</xsl:otherwise>
</xsl:choose>
</xsl:template>
<xsl:template name="dvt_1.body">
<xsl:param name="Rows" />
<xsl:param name="FirstRow" />
<xsl:param name="LastRow" />
<xsl:for-each select="$Rows">
<xsl:variable name="KeepItemsTogether" select="false()" />
<xsl:variable name="HideGroupDetail" select="false()" />
<xsl:variable name="GroupStyle" select="'auto'" />
<xsl:if test="true()">
<xsl:if ddwrt:cf_ignore="1" test="not($HideGroupDetail)">
					<tr style="display: {$GroupStyle}">
						<td class="ms-vb" style="border-style: solid; border-width: 1px">
							<xsl:value-of select="vender_service" />
						</td>
						<td class="ms-vb" style="border-style: solid; border-width: 1px">
							<span>
<xsl:attribute name="style">
<xsl:if test="normalize-space(price) &lt; '80'">color: #FF0000; font-weight: bold; table-layout: auto;</xsl:if>
</xsl:attribute>
<xsl:value-of select="price" />
</span></td>
						<td class="ms-vb" style="border-style: solid; border-width: 1px">
							<xsl:value-of select="delivery_center" />
						</td>
						<td class="ms-vb" style="border-style: solid; border-width: 1px">
							<xsl:value-of select="service_window_hour" />
						</td>
						<td class="ms-vb" style="border-style: solid; border-width: 1px">
							<xsl:value-of select="service_window_week" />
						</td>
					</tr>
				</xsl:if>
</xsl:if>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
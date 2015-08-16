﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.296
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OEA.DataLayer
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="OEA")]
	public partial class OEADataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    #endregion
		
		public OEADataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["GGCOEAConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public OEADataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OEADataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OEADataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OEADataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.OEA_SaveSelection")]
		public int OEA_SaveSelection([global::System.Data.Linq.Mapping.ParameterAttribute(Name="IMIS_ID", DbType="VarChar(10)")] string iMIS_ID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Report_Element_ID", DbType="Int")] System.Nullable<int> report_Element_ID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Participation_ID", DbType="Char(1)")] System.Nullable<char> participation_ID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Value", DbType="NVarChar(100)")] string value, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="IP_Address", DbType="VarChar(50)")] string iP_Address, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Comment", DbType="NVarChar(250)")] string comment)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), iMIS_ID, report_Element_ID, participation_ID, value, iP_Address, comment);
			return ((int)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.OEA_VerifyiMIS")]
		public ISingleResult<OEA_VerifyiMISResult> OEA_VerifyiMIS([global::System.Data.Linq.Mapping.ParameterAttribute(DbType="VarChar(10)")] string iMIS, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="EMAIL", DbType="VarChar(100)")] string eMAIL)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), iMIS, eMAIL);
			return ((ISingleResult<OEA_VerifyiMISResult>)(result.ReturnValue));
		}
		
		[global::System.Data.Linq.Mapping.FunctionAttribute(Name="dbo.OEA_GetSelectionCount")]
		public ISingleResult<OEA_GetSelectionCountResult> OEA_GetSelectionCount([global::System.Data.Linq.Mapping.ParameterAttribute(Name="Report_ID", DbType="Int")] System.Nullable<int> report_ID, [global::System.Data.Linq.Mapping.ParameterAttribute(Name="Subreport_ID", DbType="Int")] System.Nullable<int> subreport_ID)
		{
			IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), report_ID, subreport_ID);
			return ((ISingleResult<OEA_GetSelectionCountResult>)(result.ReturnValue));
		}
	}
	
	public partial class OEA_VerifyiMISResult
	{
		
		private System.Nullable<int> _IMISCount;
		
		public OEA_VerifyiMISResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IMISCount", DbType="Int")]
		public System.Nullable<int> IMISCount
		{
			get
			{
				return this._IMISCount;
			}
			set
			{
				if ((this._IMISCount != value))
				{
					this._IMISCount = value;
				}
			}
		}
	}
	
	public partial class OEA_GetSelectionCountResult
	{
		
		private decimal _NumberOfPledges;
		
		public OEA_GetSelectionCountResult()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NumberOfPledges", DbType="Decimal(19,2) NOT NULL")]
		public decimal NumberOfPledges
		{
			get
			{
				return this._NumberOfPledges;
			}
			set
			{
				if ((this._NumberOfPledges != value))
				{
					this._NumberOfPledges = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
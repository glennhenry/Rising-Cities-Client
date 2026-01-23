package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   
   public class BlueprintSecuritygradeVO
   {
      
      private var _departmentVisualSWFName:String;
      
      private var _departmentVisualSourceName:String;
      
      private var _departmentVisualLibName:String;
      
      private var _departmentToolTip:String;
      
      private var _gradeVoList:Vector.<SecurityStatusVo>;
      
      public function BlueprintSecuritygradeVO()
      {
         super();
         this.cleanAll();
      }
      
      public function clone() : BlueprintSecuritygradeVO
      {
         var _loc2_:SecurityStatusVo = null;
         var _loc1_:BlueprintSecuritygradeVO = new BlueprintSecuritygradeVO();
         _loc1_.departmentToolTip = this.departmentToolTip;
         _loc1_.departmentVisualLibName = this.departmentVisualLibName;
         _loc1_.departmentVisualSourceName = this.departmentVisualSourceName;
         _loc1_.departmentVisualSWFName = this.departmentVisualSWFName;
         for each(_loc2_ in this._gradeVoList)
         {
            _loc1_.gradeVoList.push(_loc2_.clone());
         }
         return _loc1_;
      }
      
      public function cleanAll() : void
      {
         this._departmentVisualSourceName = "";
         this._departmentVisualSWFName = "";
         this._departmentVisualLibName = "";
         this._departmentToolTip = "";
         this._gradeVoList = new Vector.<SecurityStatusVo>();
      }
      
      public function get departmentVisualSWFName() : String
      {
         return this._departmentVisualSWFName;
      }
      
      public function set departmentVisualSWFName(param1:String) : void
      {
         this._departmentVisualSWFName = param1;
      }
      
      public function get departmentVisualLibName() : String
      {
         return this._departmentVisualLibName;
      }
      
      public function set departmentVisualLibName(param1:String) : void
      {
         this._departmentVisualLibName = param1;
      }
      
      public function get departmentToolTip() : String
      {
         return this._departmentToolTip;
      }
      
      public function set departmentToolTip(param1:String) : void
      {
         this._departmentToolTip = param1;
      }
      
      public function get gradeVoList() : Vector.<SecurityStatusVo>
      {
         if(this._gradeVoList == null)
         {
            this._gradeVoList = new Vector.<SecurityStatusVo>();
         }
         return this._gradeVoList;
      }
      
      public function set gradeVoList(param1:Vector.<SecurityStatusVo>) : void
      {
         if(param1 != null)
         {
            this._gradeVoList = param1;
         }
      }
      
      public function get departmentVisualSourceName() : String
      {
         return this._departmentVisualSourceName;
      }
      
      public function set departmentVisualSourceName(param1:String) : void
      {
         this._departmentVisualSourceName = param1;
      }
   }
}


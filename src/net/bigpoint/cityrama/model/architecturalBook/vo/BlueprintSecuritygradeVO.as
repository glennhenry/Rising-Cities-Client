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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               this.cleanAll();
            }
         }
      }
      
      public function clone() : BlueprintSecuritygradeVO
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:SecurityStatusVo = null;
         var _loc1_:BlueprintSecuritygradeVO = new BlueprintSecuritygradeVO();
         if(!_loc6_)
         {
            _loc1_.departmentToolTip = this.departmentToolTip;
            if(_loc5_)
            {
               _loc1_.departmentVisualLibName = this.departmentVisualLibName;
               if(!(_loc6_ && Boolean(_loc1_)))
               {
                  addr005c:
                  _loc1_.departmentVisualSourceName = this.departmentVisualSourceName;
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.departmentVisualSWFName = this.departmentVisualSWFName;
                  }
               }
               var _loc3_:int = 0;
               for each(_loc2_ in this._gradeVoList)
               {
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc1_.gradeVoList.push(_loc2_.clone());
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005c);
      }
      
      public function cleanAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._departmentVisualSourceName = "";
            if(!(_loc2_ && _loc1_))
            {
               this._departmentVisualSWFName = "";
               if(_loc1_ || Boolean(this))
               {
                  addr004f:
                  this._departmentVisualLibName = "";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr006d);
               }
            }
            addr0062:
            this._departmentToolTip = "";
            if(!_loc2_)
            {
               addr006d:
               this._gradeVoList = new Vector.<SecurityStatusVo>();
            }
            return;
         }
         §§goto(addr004f);
      }
      
      public function get departmentVisualSWFName() : String
      {
         return this._departmentVisualSWFName;
      }
      
      public function set departmentVisualSWFName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._departmentVisualSWFName = param1;
         }
      }
      
      public function get departmentVisualLibName() : String
      {
         return this._departmentVisualLibName;
      }
      
      public function set departmentVisualLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._departmentVisualLibName = param1;
         }
      }
      
      public function get departmentToolTip() : String
      {
         return this._departmentToolTip;
      }
      
      public function set departmentToolTip(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._departmentToolTip = param1;
         }
      }
      
      public function get gradeVoList() : Vector.<SecurityStatusVo>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this._gradeVoList == null)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr003e:
                  this._gradeVoList = new Vector.<SecurityStatusVo>();
               }
            }
            return this._gradeVoList;
         }
         §§goto(addr003e);
      }
      
      public function set gradeVoList(param1:Vector.<SecurityStatusVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != null)
            {
               if(_loc2_ || _loc3_)
               {
                  addr003f:
                  this._gradeVoList = param1;
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      public function get departmentVisualSourceName() : String
      {
         return this._departmentVisualSourceName;
      }
      
      public function set departmentVisualSourceName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._departmentVisualSourceName = param1;
         }
      }
   }
}


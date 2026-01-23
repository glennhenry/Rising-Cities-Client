package net.bigpoint.cityrama.model.schoolBook.vo
{
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class SchoolBookVo
   {
      
      public var student:ProfessionalSlotVo;
      
      public var skillPointsLeft:int;
      
      public var skillPointsToAdd:int;
      
      public var duration:String;
      
      public var educationPointsAvailable:Boolean;
      
      public var dextroAvailable:Boolean;
      
      public var dextroCost:int;
      
      public var pointCost:int;
      
      public var progressInfo:TimerBarComponentVo;
      
      public var departmentData:SchoolBookDepartmentVo;
      
      public var educationIsFinished:Boolean = false;
      
      public var assignedProfessional:ProfessionalDTO;
      
      public var emergencyFeatureDisabled:Boolean;
      
      private var _attributes:Vector.<EducationAttributeVo>;
      
      public function SchoolBookVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function sortAttributes(param1:EducationAttributeVo, param2:EducationAttributeVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(param1.configId);
            if(!_loc4_)
            {
               §§push(param2.configId);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr004a:
                        §§push(1);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0084:
                        §§push(-1);
                        if(!(_loc3_ || Boolean(param2)))
                        {
                           §§goto(addr0096);
                        }
                     }
                     return §§pop();
                  }
                  addr0073:
                  addr006f:
                  if(param1.configId < param2.configId)
                  {
                     if(_loc3_ || Boolean(param2))
                     {
                        §§goto(addr0084);
                     }
                     else
                     {
                        addr0094:
                        §§push(0);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0094);
                  addr0096:
                  return §§pop();
               }
               §§goto(addr0073);
            }
            §§goto(addr006f);
         }
         §§goto(addr004a);
      }
      
      public function get attributes() : Vector.<EducationAttributeVo>
      {
         return this._attributes;
      }
      
      public function set attributes(param1:Vector.<EducationAttributeVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._attributes = param1;
            if(_loc2_)
            {
               addr0028:
               this._attributes.sort(sortAttributes);
            }
            return;
         }
         §§goto(addr0028);
      }
   }
}


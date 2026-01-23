package net.bigpoint.cityrama.model.departmentBook.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public class DepartmentSecurityBarVo
   {
      
      public var gfxId:int;
      
      public var type:String;
      
      public var currentAttributePoints:Number;
      
      public var buildingSizeX:Number;
      
      public var buildingSizeY:Number;
      
      public var maxAttributePoints:Number;
      
      public var configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      public var thresholds:Dictionary;
      
      public function DepartmentSecurityBarVo(param1:Number, param2:Number, param3:String, param4:int, param5:Vector.<ConfigSecurityGradeDTO>, param6:Dictionary, param7:Number, param8:Number)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(!_loc10_)
         {
            super();
            if(!_loc10_)
            {
               this.type = param3;
               if(!_loc10_)
               {
                  this.maxAttributePoints = param2;
                  if(_loc9_ || Boolean(this))
                  {
                     this.currentAttributePoints = param1;
                     if(_loc9_)
                     {
                        addr0058:
                        this.gfxId = param4;
                        if(_loc9_)
                        {
                           addr0073:
                           this.configSecurityGrades = param5;
                           if(_loc9_)
                           {
                              addr007f:
                              this.thresholds = param6;
                              if(_loc9_)
                              {
                                 §§goto(addr008b);
                              }
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr007f);
                     }
                  }
                  addr008b:
                  this.buildingSizeX = param7;
                  if(_loc9_ || Boolean(param3))
                  {
                     addr009f:
                     this.buildingSizeY = param8;
                  }
                  return;
               }
               §§goto(addr0058);
            }
            §§goto(addr0073);
         }
         §§goto(addr009f);
      }
   }
}


package net.bigpoint.cityrama.model.menu.vo
{
   import net.bigpoint.util.LocaUtils;
   
   public class PopulationTypeVo implements IDropDownListItemVo
   {
      
      private var _dynaLibName:String;
      
      private var _dynaImageName:String;
      
      private var _type:String;
      
      private var _amount:Number;
      
      private var _tooltip:String;
      
      public function PopulationTypeVo(param1:String, param2:String, param3:Number = 0, param4:String = null, param5:String = null)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!(_loc7_ && Boolean(param2)))
         {
            super();
            if(!_loc7_)
            {
               this._dynaLibName = param1;
               if(_loc6_ || Boolean(param1))
               {
                  addr0056:
                  this._dynaImageName = param2;
                  if(_loc6_)
                  {
                     addr0061:
                     this._amount = param3;
                     if(!(_loc7_ && Boolean(param3)))
                     {
                        this._type = param4;
                        if(_loc6_)
                        {
                           addr0081:
                           this._tooltip = param5;
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr0081);
               }
               addr0088:
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr0061);
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function get dynaImageName() : String
      {
         return this._dynaImageName;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get amountString() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this._amount);
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
   }
}


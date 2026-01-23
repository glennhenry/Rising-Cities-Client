package net.bigpoint.cityrama.model.menu.vo
{
   import net.bigpoint.util.LocaUtils;
   
   public class SpecialCurrencyVo implements IDropDownListItemVo
   {
      
      private var _dynaLibName:String;
      
      private var _dynaImageName:String;
      
      private var _type:String;
      
      private var _amount:Number = 0;
      
      private var _tooltip:String;
      
      public function SpecialCurrencyVo(param1:String, param2:String, param3:Number, param4:String = null, param5:String = null)
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
               if(!_loc7_)
               {
                  this._dynaImageName = param2;
                  if(!(_loc7_ && Boolean(param2)))
                  {
                     addr0063:
                     this._amount = param3;
                     if(_loc6_ || Boolean(param2))
                     {
                        addr0077:
                        this._type = param4;
                        if(_loc6_ || Boolean(param3))
                        {
                           addr008c:
                           this._tooltip = param5;
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008c);
                  }
                  addr0092:
                  return;
               }
               §§goto(addr0063);
            }
            §§goto(addr0077);
         }
         §§goto(addr008c);
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function get dynaImageName() : String
      {
         return this._dynaImageName;
      }
      
      public function get amountString() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this._amount);
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function get type() : String
      {
         return this._type;
      }
   }
}


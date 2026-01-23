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
         super();
         this._dynaLibName = param1;
         this._dynaImageName = param2;
         this._amount = param3;
         this._type = param4;
         this._tooltip = param5;
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


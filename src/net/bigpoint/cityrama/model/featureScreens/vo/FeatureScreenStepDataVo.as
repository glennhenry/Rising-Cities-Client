package net.bigpoint.cityrama.model.featureScreens.vo
{
   public class FeatureScreenStepDataVo
   {
      
      private var _dynaLibName:String;
      
      private var _dynaMCName:String;
      
      private var _title:String;
      
      private var _text:String;
      
      private var _isEmpty:Boolean;
      
      public function FeatureScreenStepDataVo(param1:String, param2:String, param3:String, param4:String, param5:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!(_loc6_ && Boolean(param3)))
         {
            super();
            if(_loc7_ || Boolean(param3))
            {
               addr0042:
               this._dynaLibName = param1;
               if(_loc7_ || Boolean(param1))
               {
                  this._dynaMCName = param2;
                  if(!_loc6_)
                  {
                     this._title = param3;
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        this._text = param4;
                        if(_loc7_)
                        {
                           addr008e:
                           this._isEmpty = param5;
                        }
                        §§goto(addr0095);
                     }
                  }
               }
               §§goto(addr008e);
            }
            addr0095:
            return;
         }
         §§goto(addr0042);
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function get dynaMCName() : String
      {
         return this._dynaMCName;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get isEmpty() : Boolean
      {
         return this._isEmpty;
      }
   }
}


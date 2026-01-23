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
         super();
         this._dynaLibName = param1;
         this._dynaMCName = param2;
         this._title = param3;
         this._text = param4;
         this._isEmpty = param5;
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


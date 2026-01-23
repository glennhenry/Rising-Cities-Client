package net.bigpoint.cityrama.model.featureScreens.vo
{
   public class FeatureScreenVo
   {
      
      private var _title:String;
      
      private var _flavourText:String;
      
      private var _numberOfSteps:int;
      
      private var _stepData:Vector.<FeatureScreenStepDataVo>;
      
      private var _feature:String;
      
      public function FeatureScreenVo(param1:Object)
      {
         super();
         this._title = param1.title;
         this._numberOfSteps = param1.stepAmount;
         this._stepData = param1.steps;
         this._flavourText = param1.flavour;
         this._feature = param1.feature;
      }
      
      public function get numberOfSteps() : int
      {
         return this._numberOfSteps;
      }
      
      public function get stepData() : Vector.<FeatureScreenStepDataVo>
      {
         return this._stepData;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get feature() : String
      {
         return this._feature;
      }
   }
}


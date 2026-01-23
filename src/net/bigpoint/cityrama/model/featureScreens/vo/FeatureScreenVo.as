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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_ || Boolean(param1))
            {
               this._title = param1.title;
               if(_loc2_)
               {
                  this._numberOfSteps = param1.stepAmount;
                  if(!_loc3_)
                  {
                     addr005b:
                     this._stepData = param1.steps;
                     if(!_loc3_)
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr005b);
            }
            §§goto(addr0080);
         }
         addr006a:
         this._flavourText = param1.flavour;
         if(_loc2_ || _loc3_)
         {
            addr0080:
            this._feature = param1.feature;
         }
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


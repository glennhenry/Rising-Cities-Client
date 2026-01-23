package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   
   public class MasteryChallengeUiInfolayerComponentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _challengeDescription:String;
      
      private var _targetValue:Number;
      
      private var _currentValue:Number;
      
      private var _rewards:Vector.<MasteryBonusVo>;
      
      private var _showProgressBarOverride:Boolean;
      
      public function MasteryChallengeUiInfolayerComponentVo(param1:uint, param2:Point, param3:String, param4:Number, param5:Number, param6:Vector.<MasteryBonusVo>, param7:Boolean, param8:String = "")
      {
         super(param1,param2,param8);
         this._challengeDescription = param3;
         this._targetValue = param4;
         this._currentValue = param5;
         this._rewards = param6;
         this._showProgressBarOverride = param7;
      }
      
      public function get challengeDescription() : String
      {
         return this._challengeDescription;
      }
      
      public function set challengeDescription(param1:String) : void
      {
         this._challengeDescription = param1;
      }
      
      public function get targetValue() : Number
      {
         return this._targetValue;
      }
      
      public function get currentValue() : Number
      {
         return this._currentValue;
      }
      
      public function get rewards() : Vector.<MasteryBonusVo>
      {
         return this._rewards;
      }
      
      public function get showProgressBarOverride() : Boolean
      {
         return this._showProgressBarOverride;
      }
   }
}


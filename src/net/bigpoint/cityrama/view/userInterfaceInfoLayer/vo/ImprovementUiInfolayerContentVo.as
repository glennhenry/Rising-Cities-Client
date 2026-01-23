package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class ImprovementUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _data:ImprovementVo;
      
      private var _currentTimeStamp:Number;
      
      public function ImprovementUiInfolayerContentVo(param1:uint, param2:Point, param3:ImprovementVo, param4:String = "", param5:Number = 0)
      {
         super(param1,param2,param4);
         this._data = param3;
         this._currentTimeStamp = param5;
      }
      
      override public function get headerString() : String
      {
         return LocaUtils.getString("rcl.improvements.name","rcl.improvements.name." + this._data.config.locaId + ".capital");
      }
      
      public function get quality() : String
      {
         return this._data.config.quality;
      }
      
      public function get listOfEffiencies() : ArrayCollection
      {
         var _loc3_:ImprovementEfficiencyVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Array = [];
         for each(_loc3_ in this._data.listOfEfficiencies)
         {
            if(_loc2_.indexOf(_loc3_.tag) == -1)
            {
               _loc2_.push(_loc3_.tag);
               _loc1_.addItem(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function get timerFull() : Number
      {
         return this._data.config.lifetime;
      }
      
      public function get expirationTime() : Number
      {
         return this._data.expirationTime;
      }
      
      public function get harvestProgressVo() : TimerBarComponentVo
      {
         if(this.timerFull == -1)
         {
            return null;
         }
         var _loc1_:TimerBarComponentVo = new TimerBarComponentVo();
         _loc1_.cycleLength = this.timerFull;
         _loc1_.waitingForStart = this._data.expirationTime == 0;
         if(!_loc1_.waitingForStart)
         {
            _loc1_.targetTime = this._data.expirationTime;
            _loc1_.startTime = this._data.expirationTime - this._data.runtime;
            _loc1_.currentTime = this._currentTimeStamp;
         }
         return _loc1_;
      }
   }
}


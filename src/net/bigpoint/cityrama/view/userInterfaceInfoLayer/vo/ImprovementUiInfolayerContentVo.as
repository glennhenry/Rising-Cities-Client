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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            super(param1,param2,param4);
            if(!(_loc6_ && Boolean(param1)))
            {
               §§goto(addr003b);
            }
            §§goto(addr0046);
         }
         addr003b:
         this._data = param3;
         if(_loc7_)
         {
            addr0046:
            this._currentTimeStamp = param5;
         }
      }
      
      override public function get headerString() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(LocaUtils);
         §§push("rcl.improvements.name");
         §§push("rcl.improvements.name.");
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() + this._data.config.locaId);
            if(!_loc1_)
            {
               §§push(§§pop() + ".capital");
            }
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get quality() : String
      {
         return this._data.config.quality;
      }
      
      public function get listOfEffiencies() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ImprovementEfficiencyVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Array = [];
         for each(_loc3_ in this._data.listOfEfficiencies)
         {
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               if(_loc2_.indexOf(_loc3_.tag) == -1)
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     _loc2_.push(_loc3_.tag);
                     if(!(_loc7_ || Boolean(_loc3_)))
                     {
                        continue;
                     }
                  }
                  _loc1_.addItem(_loc3_);
               }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.timerFull == -1)
            {
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr002d);
               }
            }
            var _loc1_:TimerBarComponentVo = new TimerBarComponentVo();
            if(!_loc3_)
            {
               _loc1_.cycleLength = this.timerFull;
               if(!_loc3_)
               {
                  _loc1_.waitingForStart = this._data.expirationTime == 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0072:
                     if(!_loc1_.waitingForStart)
                     {
                        if(_loc2_)
                        {
                           _loc1_.targetTime = this._data.expirationTime;
                           if(_loc2_ || _loc3_)
                           {
                              addr00a5:
                              §§push(_loc1_);
                              §§push(this._data.expirationTime);
                              if(_loc2_)
                              {
                                 §§push(§§pop() - this._data.runtime);
                              }
                              §§pop().startTime = §§pop();
                              if(!_loc3_)
                              {
                                 addr00c2:
                                 _loc1_.currentTime = this._currentTimeStamp;
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00c2);
                        }
                     }
                  }
                  addr00ca:
                  return _loc1_;
               }
               §§goto(addr0072);
            }
            §§goto(addr00a5);
         }
         addr002d:
         return null;
      }
   }
}


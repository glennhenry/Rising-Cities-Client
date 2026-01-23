package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.filters.GlowFilter;
   
   public class StepMarkerBarComponent extends SkinnableComponent
   {
      
      public static const MARKER_CLICKED:String = "MARKER_CLICKED";
      
      private static var _skinParts:Object = {
         "markerHGroup":true,
         "progressBar":true
      };
      
      private var _data:StepMarkerVo;
      
      private var _dataIsDirty:Boolean;
      
      public var markerHGroup:HGroup;
      
      public var progressBar:Group;
      
      public var addMouseListener:Boolean = true;
      
      private var _clickedMarkerIndex:int;
      
      public function StepMarkerBarComponent()
      {
         super();
      }
      
      public function set data(param1:StepMarkerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Group = null;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:StepCheckMarkComponent = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = new Group();
            _loc1_.percentWidth = 100;
            if(this._data.stepActiveStyles.length == 0)
            {
               throw new Error("step style list cannot be empty");
            }
            if(this._data.stepActiveStyles.length != this._data.stepInactiveStyles.length)
            {
               throw new Error("step style list lengths need to match");
            }
            if(this._data.hasLastInterval)
            {
               if(this._data.stepInactiveStyles.length + 1 != this._data.progressSteps.length)
               {
                  throw new Error("progressSteps Vector length needs to be styles lenght+1 when component has last interval");
               }
            }
            else if(this._data.stepInactiveStyles.length != this._data.progressSteps.length)
            {
               throw new Error("progressSteps Vector length needs to match styles lenght when component has no last interval");
            }
            while(this.markerHGroup.numElements)
            {
               this.markerHGroup.removeElementAt(0);
            }
            _loc2_ = 0;
            while(_loc2_ < this._data.stepInactiveStyles.length)
            {
               _loc4_ = this._data.currentProgress >= this._data.progressSteps[_loc2_] ? this._data.stepActiveStyles[_loc2_] : this._data.stepInactiveStyles[_loc2_];
               _loc1_ = new Group();
               _loc1_.percentWidth = 100;
               this.markerHGroup.addElement(_loc1_);
               _loc5_ = new StepCheckMarkComponent();
               _loc5_.styleName = _loc4_;
               _loc5_.index = _loc2_;
               if(this.addMouseListener)
               {
                  _loc5_.addEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
                  _loc5_.addEventListener(MouseEvent.CLICK,this.handleStepMarkerClick);
               }
               this.markerHGroup.addElement(_loc5_);
               _loc1_ = new Group();
               _loc1_.percentWidth = 100;
               if(_loc2_ < this._data.stepInactiveStyles.length - 1 || this._data.hasLastInterval)
               {
                  this.markerHGroup.addElement(_loc1_);
               }
               _loc2_++;
            }
            this.markerHGroup.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleBarUpdateComplete);
            _loc3_ = 0.00001;
            if(this._data.hasLastInterval)
            {
               _loc3_ = this.calculateNormalBarProgress();
            }
            else
            {
               _loc3_ = this.calculateAdjustedBarProgress();
            }
            this.progressBar.percentWidth = _loc3_;
            this.progressBar.visible = _loc3_ > 0.00001;
         }
      }
      
      private function handleBarUpdateComplete(param1:FlexEvent) : void
      {
         var _loc2_:StepCheckMarkComponent = null;
         this.markerHGroup.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleBarUpdateComplete);
         if(this.markerHGroup.getElementAt(this.markerHGroup.numElements - 1) is StepCheckMarkComponent)
         {
            _loc2_ = this.markerHGroup.getElementAt(this.markerHGroup.numElements - 1) as StepCheckMarkComponent;
            if(_loc2_.width != 0)
            {
               this.positionMarkerHGroup(_loc2_);
            }
            else
            {
               _loc2_.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleLastElementComplete);
            }
         }
      }
      
      private function handleLastElementComplete(param1:FlexEvent = null) : void
      {
         if(param1.target is StepCheckMarkComponent)
         {
            (param1.target as StepCheckMarkComponent).removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleLastElementComplete);
            this.positionMarkerHGroup(param1.target as StepCheckMarkComponent);
         }
      }
      
      private function positionMarkerHGroup(param1:StepCheckMarkComponent) : void
      {
         this.markerHGroup.right = -param1.width / 2;
      }
      
      private function handleStepMarkerClick(param1:MouseEvent) : void
      {
         if(param1.currentTarget is StepCheckMarkComponent)
         {
            this._clickedMarkerIndex = (param1.currentTarget as StepCheckMarkComponent).index;
            dispatchEvent(new Event(MARKER_CLICKED));
         }
      }
      
      private function handleStepMarkerOver(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.ROLL_OUT,this.handleStepMarkerOut);
         param1.target.removeEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
         param1.target.filters = [new GlowFilter(11596060,1,4,4,100,1)];
      }
      
      private function handleStepMarkerOut(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.ROLL_OVER,this.handleStepMarkerOver);
         param1.target.removeEventListener(MouseEvent.ROLL_OUT,this.handleStepMarkerOut);
         param1.target.filters = [];
      }
      
      private function getProgressInInterval(param1:int, param2:int, param3:int) : Number
      {
         param2 -= param1;
         param3 -= param1;
         return param3 / param2;
      }
      
      private function calculateNormalBarProgress() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc1_:Number = 0.00001;
         if(this._data.progressSteps.length)
         {
            if(this._data.currentProgress > 0)
            {
               if(this._data.currentProgress < this._data.progressSteps[this._data.progressSteps.length - 1])
               {
                  _loc2_ = 100 / ((this._data.progressSteps.length - 1) * 2);
                  _loc3_ = 0;
                  _loc5_ = 0;
                  while(_loc5_ < this._data.progressSteps.length)
                  {
                     if(this._data.progressSteps[_loc5_] > this._data.currentProgress)
                     {
                        _loc12_ = _loc3_ == 0 ? 0 : this._data.progressSteps[_loc3_ - 1];
                        _loc13_ = this._data.progressSteps[_loc3_];
                        _loc4_ = this.getProgressInInterval(_loc12_,_loc13_,this._data.currentProgress);
                        break;
                     }
                     _loc3_++;
                     _loc5_++;
                  }
                  _loc6_ = _loc2_;
                  _loc7_ = _loc2_;
                  _loc8_ = _loc6_ + _loc7_;
                  _loc9_ = _loc3_ > 0 ? _loc2_ : 0;
                  _loc10_ = _loc8_ * (_loc3_ > 1 ? _loc3_ - 1 : 0);
                  _loc11_ = _loc3_ > 0 && _loc3_ < this._data.progressSteps.length - 1 ? _loc8_ : _loc2_;
                  _loc1_ = _loc9_ + _loc10_ + _loc11_ * _loc4_;
               }
               else
               {
                  _loc1_ = 100;
               }
            }
         }
         return _loc1_;
      }
      
      private function calculateAdjustedBarProgress() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc1_:Number = 0.00001;
         if(this._data.progressSteps.length)
         {
            if(this._data.currentProgress > 0)
            {
               if(this._data.currentProgress < this._data.progressSteps[this._data.progressSteps.length - 1])
               {
                  _loc2_ = 100 / (this._data.progressSteps.length * 2 - 1);
                  _loc3_ = 0;
                  _loc5_ = 0;
                  while(_loc5_ < this._data.progressSteps.length)
                  {
                     if(this._data.progressSteps[_loc5_] > this._data.currentProgress)
                     {
                        _loc11_ = _loc3_ == 0 ? 0 : this._data.progressSteps[_loc3_ - 1];
                        _loc12_ = this._data.progressSteps[_loc3_];
                        _loc4_ = this.getProgressInInterval(_loc11_,_loc12_,this._data.currentProgress);
                        break;
                     }
                     _loc3_++;
                     _loc5_++;
                  }
                  _loc6_ = _loc2_;
                  _loc7_ = this._data.progressSteps.length - 1 > 0 ? (100 - _loc6_) / (this._data.progressSteps.length - 1) : 0;
                  _loc8_ = _loc3_ > 0 ? _loc2_ : 0;
                  _loc9_ = _loc7_ * (_loc3_ > 1 ? _loc3_ - 1 : 0);
                  _loc10_ = _loc3_ > 0 ? _loc7_ : _loc2_;
                  _loc1_ = _loc8_ + _loc9_ + _loc10_ * _loc4_;
               }
               else
               {
                  _loc1_ = 100;
               }
            }
         }
         return _loc1_;
      }
      
      public function get clickedMarkerIndex() : int
      {
         return this._clickedMarkerIndex;
      }
   }
}


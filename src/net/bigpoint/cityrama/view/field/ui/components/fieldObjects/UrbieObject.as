package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IGameObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUrbieObject;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.DirectionStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.FramesetStrategy;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import net.bigpoint.util.RandomUtilities;
   
   public class UrbieObject extends SpriteMatrixObject3d implements IObject3D, IUrbieObject, IGameObject
   {
      
      protected var _directionStrategy:DirectionStrategy;
      
      protected var _assetReady:Boolean = true;
      
      private var _animationStartConditions:Vector.<AnimationConditionsVo>;
      
      private var _framesetStrategy:FramesetStrategy;
      
      private var _listenerObject:Object = {};
      
      public function UrbieObject(param1:Sprite, param2:UrbieLifeVo)
      {
         super(param1,param2);
         var _temp_1:* = param1;
         param1.mouseEnabled = false;
         _temp_1.mouseChildren = false;
         usePreciseValues = true;
         this._directionStrategy = new DirectionStrategy();
         this._directionStrategy.addEventListener(Event.CHANGE,this.handleDirectionChange);
         var _loc3_:Sprite = new Sprite();
         param1.addChild(_loc3_);
         this._framesetStrategy = new FramesetStrategy(_loc3_,this.urbieLifeVo.config);
         this._animationStartConditions = new Vector.<AnimationConditionsVo>();
         param1.x = param2.offset.x;
         param1.y = param2.offset.y;
         if(param2.icon)
         {
            param2.icon.addEventListener(Event.COMPLETE,this.handleComplete);
            param1.addChild(param2.icon);
            this.urbieLifeVo.icon.x = -0.5 * this.urbieLifeVo.icon.width;
            this.urbieLifeVo.icon.y = -15 - this.urbieLifeVo.icon.height;
            param2.icon.visible = false;
         }
         this.container.visible = false;
      }
      
      private function handleDirectionChange(param1:Event) : void
      {
         this._framesetStrategy.playFrameset(this._directionStrategy.direction);
      }
      
      private function handleComplete(param1:Event) : void
      {
         this.urbieLifeVo.icon.removeEventListener(Event.COMPLETE,this.handleComplete);
         this.urbieLifeVo.icon.x = -0.5 * this.urbieLifeVo.icon.width;
         this.urbieLifeVo.icon.y = -15 - this.urbieLifeVo.icon.height;
      }
      
      public function get urbieLifeVo() : UrbieLifeVo
      {
         return this._data as UrbieLifeVo;
      }
      
      public function get gameObjectVo() : IGameObjectVo
      {
         return this._data as IGameObjectVo;
      }
      
      public function onDataChanged(param1:Event) : void
      {
      }
      
      public function destroy() : void
      {
         this._directionStrategy.removeEventListener(Event.CHANGE,this.handleDirectionChange);
         if(this.urbieLifeVo.icon)
         {
            this.urbieLifeVo.icon.removeEventListener(Event.COMPLETE,this.handleComplete);
         }
         this.removeAllListeners();
         this._framesetStrategy.destroy();
         if(this.urbieLifeVo)
         {
            if(this.urbieLifeVo.icon)
            {
               RandomUtilities.cleanRemoveChild(this.urbieLifeVo.icon);
            }
            this._directionStrategy = null;
            this._presentation = null;
         }
      }
      
      public function get animationStartConditions() : Vector.<AnimationConditionsVo>
      {
         return this._animationStartConditions;
      }
      
      public function set animationStartConditions(param1:Vector.<AnimationConditionsVo>) : void
      {
         this._animationStartConditions = param1;
      }
      
      public function get framesetStrategy() : FramesetStrategy
      {
         return this._framesetStrategy;
      }
      
      public function get directionStrategy() : DirectionStrategy
      {
         return this._directionStrategy;
      }
      
      public function get assetReady() : Boolean
      {
         return this._assetReady;
      }
      
      public function set assetReady(param1:Boolean) : void
      {
         this._assetReady = param1;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._listenerObject[param1] = param2;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeAllListeners() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this._listenerObject)
         {
            this.removeEventListener(_loc1_,this._listenerObject[_loc1_]);
            this._listenerObject[_loc1_] = null;
            delete this._listenerObject[_loc1_];
         }
      }
      
      override public function invalidatePosition() : void
      {
         super.invalidatePosition();
         this.container.visible = this.container.y > 0 && this.container.x != 0;
      }
   }
}


package as3isolib.core
{
   import as3isolib.data.INode;
   import as3isolib.data.Node;
   import as3isolib.events.IsoEvent;
   import eDpLib.events.ProxyEvent;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   
   use namespace as3isolib_internal;
   
   public class IsoContainer extends Node implements IIsoContainer
   {
      
      protected var bIncludeInLayout:Boolean = true;
      
      protected var includeInLayoutChanged:Boolean = false;
      
      protected var displayListChildrenArray:Vector.<IIsoContainer> = new Vector.<IIsoContainer>();
      
      private var bAddedToDisplayList:Boolean;
      
      private var bAddedToStage:Boolean;
      
      as3isolib_internal var bIsInvalidated:Boolean;
      
      protected var mainContainer:Sprite;
      
      public function IsoContainer()
      {
         super();
         addEventListener(IsoEvent.CHILD_ADDED,this.child_changeHandler);
         addEventListener(IsoEvent.CHILD_REMOVED,this.child_changeHandler);
         this.createChildren();
         proxyTarget = this.mainContainer;
      }
      
      public function get includeInLayout() : Boolean
      {
         return this.bIncludeInLayout;
      }
      
      public function set includeInLayout(param1:Boolean) : void
      {
         if(this.bIncludeInLayout != param1)
         {
            this.bIncludeInLayout = param1;
            this.includeInLayoutChanged = true;
         }
      }
      
      public function get displayListChildren() : Array
      {
         var _loc2_:IIsoContainer = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.displayListChildrenArray)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         if(param1 is IIsoContainer)
         {
            super.addChildAt(param1,param2);
            if(IIsoContainer(param1).includeInLayout)
            {
               this.displayListChildrenArray.push(param1);
               if(param2 > this.mainContainer.numChildren)
               {
                  param2 = uint(this.mainContainer.numChildren);
               }
               var _loc3_:DisplayObjectContainer = IIsoContainer(param1).container.parent;
               this.mainContainer.addChildAt(IIsoContainer(param1).container,param2);
            }
            return;
         }
         throw new Error("parameter child does not implement IContainer.");
      }
      
      override public function setChildIndex(param1:INode, param2:uint) : void
      {
         if(!param1 is IIsoContainer)
         {
            throw new Error("parameter child does not implement IContainer.");
         }
         if(!param1.hasParent || param1.parent != this)
         {
            throw new Error("parameter child is not found within node structure.");
         }
         super.setChildIndex(param1,param2);
         this.mainContainer.setChildIndex(IIsoContainer(param1).container,param2);
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         var _loc3_:int = 0;
         var _loc2_:IIsoContainer = IIsoContainer(super.removeChildByID(param1));
         if(Boolean(_loc2_) && _loc2_.includeInLayout)
         {
            _loc3_ = int(this.displayListChildrenArray.indexOf(_loc2_));
            if(_loc3_ > -1)
            {
               this.displayListChildrenArray.splice(_loc3_,1);
            }
            this.mainContainer.removeChild(IIsoContainer(_loc2_).container);
         }
         return _loc2_;
      }
      
      override public function removeAllChildren() : void
      {
         var _loc1_:IIsoContainer = null;
         for each(_loc1_ in children)
         {
            if(_loc1_.includeInLayout)
            {
               this.mainContainer.removeChild(_loc1_.container);
            }
         }
         this.displayListChildrenArray = new Vector.<IIsoContainer>();
         super.removeAllChildren();
      }
      
      protected function createChildren() : void
      {
         this.mainContainer = new Sprite();
         this.attachMainContainerEventListeners();
      }
      
      protected function attachMainContainerEventListeners() : void
      {
         if(this.mainContainer)
         {
            this.mainContainer.addEventListener(Event.ADDED,this.mainContainer_addedHandler,false,0,true);
            this.mainContainer.addEventListener(Event.ADDED_TO_STAGE,this.mainContainer_addedToStageHandler,false,0,true);
            this.mainContainer.addEventListener(Event.REMOVED,this.mainContainer_removedHandler,false,0,true);
            this.mainContainer.addEventListener(Event.REMOVED_FROM_STAGE,this.mainContainer_removedFromStageHandler,false,0,true);
         }
      }
      
      public function get isAddedToDisplay() : Boolean
      {
         return this.bAddedToDisplayList;
      }
      
      public function get isAddedToStage() : Boolean
      {
         return this.bAddedToStage;
      }
      
      private function mainContainer_addedHandler(param1:Event) : void
      {
         this.bAddedToDisplayList = true;
      }
      
      private function mainContainer_addedToStageHandler(param1:Event) : void
      {
         this.bAddedToStage = true;
      }
      
      private function mainContainer_removedHandler(param1:Event) : void
      {
         this.bAddedToDisplayList = false;
      }
      
      private function mainContainer_removedFromStageHandler(param1:Event) : void
      {
         this.bAddedToStage = false;
      }
      
      public function get isInvalidated() : Boolean
      {
         return this.as3isolib_internal::bIsInvalidated;
      }
      
      public function render(param1:Boolean = true) : void
      {
         this.preRenderLogic();
         this.renderLogic(param1);
         this.postRenderLogic();
      }
      
      protected function preRenderLogic() : void
      {
         this.dispatchEvent(new IsoEvent(IsoEvent.RENDER));
      }
      
      protected function renderLogic(param1:Boolean = true) : void
      {
         var _loc2_:IIsoContainer = null;
         var _loc3_:int = 0;
         var _loc4_:IIsoContainer = null;
         if(this.includeInLayoutChanged && Boolean(as3isolib_internal::parentNode))
         {
            _loc2_ = IIsoContainer(as3isolib_internal::parentNode);
            _loc3_ = int(_loc2_.displayListChildren.indexOf(this));
            if(this.bIncludeInLayout)
            {
               if(_loc3_ == -1)
               {
                  _loc2_.displayListChildren.push(this);
               }
            }
            else if(!this.bIncludeInLayout)
            {
               if(_loc3_ >= 0)
               {
                  _loc2_.displayListChildren.splice(_loc3_,1);
               }
            }
            this.mainContainer.visible = this.bIncludeInLayout;
            this.includeInLayoutChanged = false;
         }
         if(param1)
         {
            for each(_loc4_ in children)
            {
               this.renderChild(_loc4_);
            }
         }
      }
      
      protected function postRenderLogic() : void
      {
         this.dispatchEvent(new IsoEvent(IsoEvent.RENDER_COMPLETE));
      }
      
      protected function renderChild(param1:IIsoContainer) : void
      {
         param1.render(true);
      }
      
      protected function child_changeHandler(param1:Event) : void
      {
         this.as3isolib_internal::bIsInvalidated = true;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if(param1.bubbles)
         {
            return proxyTarget.dispatchEvent(new ProxyEvent(this,param1));
         }
         return super.dispatchEvent(param1);
      }
      
      public function get depth() : int
      {
         if(this.mainContainer.parent)
         {
            return this.mainContainer.parent.getChildIndex(this.mainContainer);
         }
         return -1;
      }
      
      public function get container() : Sprite
      {
         return this.mainContainer;
      }
   }
}


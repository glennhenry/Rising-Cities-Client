package as3isolib.display.scene
{
   import as3isolib.bounds.IBounds;
   import as3isolib.bounds.SceneBounds;
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.core.IsoContainer;
   import as3isolib.core.as3isolib_internal;
   import as3isolib.data.INode;
   import as3isolib.display.renderers.DefaultSceneLayoutRenderer;
   import as3isolib.display.renderers.ISceneLayoutRenderer;
   import as3isolib.display.renderers.ISceneRenderer;
   import as3isolib.events.IsoEvent;
   import flash.display.DisplayObjectContainer;
   import mx.core.ClassFactory;
   import mx.core.IFactory;
   
   use namespace as3isolib_internal;
   
   public class IsoScene extends IsoContainer implements IIsoScene
   {
      
      private var _isoBounds:IBounds;
      
      protected var host:DisplayObjectContainer;
      
      protected var invalidatedChildrenArray:Array = [];
      
      public var layoutEnabled:Boolean = true;
      
      private var bLayoutIsFactory:Boolean = true;
      
      private var layoutObject:Object;
      
      public var stylingEnabled:Boolean = true;
      
      private var styleRendererFactories:Vector.<IFactory> = new Vector.<IFactory>();
      
      public function IsoScene()
      {
         super();
         this.layoutObject = new ClassFactory(DefaultSceneLayoutRenderer);
      }
      
      public function get isoBounds() : IBounds
      {
         return new SceneBounds(this);
      }
      
      public function get hostContainer() : DisplayObjectContainer
      {
         return this.host;
      }
      
      public function set hostContainer(param1:DisplayObjectContainer) : void
      {
         if(Boolean(param1) && this.host != param1)
         {
            if(Boolean(this.host) && this.host.contains(container))
            {
               this.host.removeChild(container);
               as3isolib_internal::ownerObject = null;
            }
            else if(hasParent)
            {
               parent.removeChild(this);
            }
            this.host = param1;
            if(this.host)
            {
               this.host.addChild(container);
               as3isolib_internal::ownerObject = this.host;
               as3isolib_internal::parentNode = null;
            }
         }
      }
      
      public function get invalidatedChildren() : Array
      {
         return this.invalidatedChildrenArray;
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         if(param1 is IIsoDisplayObject)
         {
            super.addChildAt(param1,param2);
            param1.addEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
            as3isolib_internal::bIsInvalidated = true;
            return;
         }
         throw new Error("parameter child is not of type IIsoDisplayObject");
      }
      
      override public function setChildIndex(param1:INode, param2:uint) : void
      {
         super.setChildIndex(param1,param2);
         as3isolib_internal::bIsInvalidated = true;
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         var _loc2_:INode = super.removeChildByID(param1);
         if(_loc2_)
         {
            _loc2_.removeEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
            as3isolib_internal::bIsInvalidated = true;
         }
         return _loc2_;
      }
      
      override public function removeAllChildren() : void
      {
         var _loc1_:INode = null;
         for each(_loc1_ in children)
         {
            _loc1_.removeEventListener(IsoEvent.INVALIDATE,this.child_invalidateHandler);
         }
         super.removeAllChildren();
         as3isolib_internal::bIsInvalidated = true;
      }
      
      protected function child_invalidateHandler(param1:IsoEvent) : void
      {
         var _loc2_:Object = param1.target;
         if(this.invalidatedChildrenArray.indexOf(_loc2_) == -1)
         {
            this.invalidatedChildrenArray.push(_loc2_);
         }
         as3isolib_internal::bIsInvalidated = true;
      }
      
      public function get layoutRenderer() : Object
      {
         return this.layoutObject;
      }
      
      public function set layoutRenderer(param1:Object) : void
      {
         if(!param1)
         {
            this.layoutObject = new ClassFactory(DefaultSceneLayoutRenderer);
            this.bLayoutIsFactory = true;
            as3isolib_internal::bIsInvalidated = true;
         }
         if(Boolean(param1) && this.layoutObject != param1)
         {
            if(param1 is IFactory)
            {
               this.bLayoutIsFactory = true;
            }
            else
            {
               if(!(param1 is ISceneLayoutRenderer))
               {
                  throw new Error("value for layoutRenderer is not of type IFactory or ISceneLayoutRenderer");
               }
               this.bLayoutIsFactory = false;
            }
            this.layoutObject = param1;
            as3isolib_internal::bIsInvalidated = true;
         }
      }
      
      public function get styleRenderers() : Array
      {
         var _loc2_:IFactory = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.styleRendererFactories)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function set styleRenderers(param1:Array) : void
      {
         if(param1)
         {
            this.styleRendererFactories = Vector.<IFactory>(param1);
         }
         else
         {
            this.styleRendererFactories = null;
         }
         as3isolib_internal::bIsInvalidated = true;
      }
      
      public function invalidateScene() : void
      {
         as3isolib_internal::bIsInvalidated = true;
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         var _loc2_:ISceneRenderer = null;
         var _loc3_:IFactory = null;
         var _loc4_:ISceneLayoutRenderer = null;
         super.renderLogic(param1);
         if(as3isolib_internal::bIsInvalidated)
         {
            if(this.layoutEnabled)
            {
               if(this.bLayoutIsFactory)
               {
                  _loc4_ = IFactory(this.layoutObject).newInstance();
               }
               else
               {
                  _loc4_ = ISceneLayoutRenderer(this.layoutObject);
               }
               if(_loc4_)
               {
                  _loc4_.renderScene(this);
               }
            }
            if(this.stylingEnabled && this.styleRendererFactories.length > 0)
            {
               mainContainer.graphics.clear();
               for each(_loc3_ in this.styleRendererFactories)
               {
                  _loc2_ = _loc3_.newInstance();
                  if(_loc2_)
                  {
                     _loc2_.renderScene(this);
                  }
               }
            }
            as3isolib_internal::bIsInvalidated = false;
         }
      }
      
      override protected function postRenderLogic() : void
      {
         this.invalidatedChildrenArray = [];
         super.postRenderLogic();
         this.sceneRendered();
      }
      
      protected function sceneRendered() : void
      {
      }
   }
}


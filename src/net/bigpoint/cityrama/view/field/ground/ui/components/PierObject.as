package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   
   public class PierObject extends SpriteMatrixObject3d implements IPlaneObject, IEstablishedManagerImplementation, IInformationFloat, IInteraction
   {
      
      private var _pierObjectVo:PierObjectVo;
      
      private var _concreteComposition:Sprite;
      
      protected var _hitzoneContainer:Sprite;
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      protected var _assetCollection:BillboardAssetsReferenceHolder;
      
      protected var _establishedManager:IEstablishedManager;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      protected var _billboardObjectContainer:SmartObjectContainer;
      
      public function PierObject(param1:BillboardAssetsReferenceHolder, param2:PierObjectVo)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this._concreteComposition = new Sprite();
            if(_loc3_ || Boolean(param1))
            {
               this._hitzoneContainer = new Sprite();
               if(_loc3_)
               {
                  this._billboardObjectContainer = new SmartObjectContainer();
                  if(!_loc4_)
                  {
                     super(this._concreteComposition,param2);
                     if(!_loc4_)
                     {
                        addr0062:
                        this._concreteComposition.mouseEnabled = true;
                        if(_loc3_ || Boolean(param1))
                        {
                           this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billboardObjectContainer);
                           if(_loc3_ || Boolean(this))
                           {
                              this._pierObjectVo = param2;
                              if(!_loc4_)
                              {
                                 this._assetCollection = param1;
                                 if(_loc3_ || Boolean(param2))
                                 {
                                    addr00c3:
                                    this.prepareEstablishedManager();
                                    if(!(_loc4_ && Boolean(param2)))
                                    {
                                       this.invalidateEstablishedManager();
                                       if(_loc3_)
                                       {
                                          addr00e0:
                                          this.prepareInformationFloaterManager();
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr00ff:
                                             this.addContainer(this._hitzoneContainer,true);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr0110);
                                             }
                                          }
                                       }
                                       §§goto(addr0126);
                                    }
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00ff);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr0126);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0062);
               }
               addr0110:
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
               if(!_loc4_)
               {
                  addr0126:
                  this._hitzoneContainer.mouseEnabled = true;
               }
               §§goto(addr012e);
            }
            addr012e:
            return;
         }
         §§goto(addr0126);
      }
      
      public function get pierObjectVo() : PierObjectVo
      {
         return this._pierObjectVo;
      }
      
      public function get objectVo() : IPlaneObjectVo
      {
         return this._pierObjectVo;
      }
      
      public function prepareEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._establishedManager);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr003a:
                     this.addContainer(this._billboardObjectContainer);
                     if(_loc1_ || _loc1_)
                     {
                        this._establishedManager = new EstablishedManagerDefault();
                        if(_loc1_ || _loc2_)
                        {
                           addr0077:
                           this._establishedManager.prepare(this.pierObjectVo,this._billboardObjectContainer,this._assetCollection.mainAsset);
                           addr0073:
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0073);
                  }
               }
               addr008b:
               return;
            }
            §§goto(addr0077);
         }
         §§goto(addr003a);
      }
      
      public function invalidateEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._establishedManager.invalidate();
         }
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            param1.mouseChildren = param3;
            if(!_loc4_)
            {
               addr0033:
               param1.mouseEnabled = param2;
               if(!(_loc4_ && Boolean(this)))
               {
                  this._concreteComposition.addChild(param1);
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      public function prepareInformationFloaterManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._informationFloaterManager);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr0043);
                  }
               }
               §§goto(addr0053);
            }
            §§goto(addr0057);
         }
         addr0043:
         this._informationFloaterManager = new InformationFloaterManager();
         if(_loc2_)
         {
            addr0057:
            this._informationFloaterManager.prepareInformationFloaterManager(this.pierObjectVo,null);
            addr0053:
         }
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._informationFloaterManager.invalidateInformationFloaterManager(param1);
         }
      }
      
      public function prepareHighlightManager() : void
      {
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(!_loc3_)
         {
            if(Point.distance(this._tolerancePoint,_loc2_) > 30)
            {
               if(_loc4_)
               {
                  this._clickLock = true;
               }
            }
         }
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc2_)
            {
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(_loc2_ || _loc2_)
               {
                  this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(_loc2_)
                  {
                     this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc2_ || _loc2_)
                     {
                        this._hitzoneContainer.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                        addr0090:
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§goto(addr00bb);
                        }
                        §§goto(addr00d0);
                     }
                  }
                  addr00bb:
                  this._hitzoneContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                  if(!_loc3_)
                  {
                     addr00d0:
                     this.dispatchRollOver();
                  }
                  return;
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr00d0);
      }
      
      public function dispatchRollOver(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.iconEvent = param1;
            if(!_loc4_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      public function dispatchMouseClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
         }
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc2_ || _loc2_)
            {
               addr0048:
               this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(_loc2_ || Boolean(this))
               {
                  this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(_loc2_)
                  {
                     this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc2_)
                     {
                        this.dispatchRollOut();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      public function restEventListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.onMouseRollOut(null);
         }
      }
      
      public function dispatchRollOut() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this));
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._tolerancePoint = new Point(param1.stageX,param1.stageY);
            if(_loc3_)
            {
               addr003c:
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            }
            return;
         }
         §§goto(addr003c);
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!this._clickLock)
            {
               if(_loc2_)
               {
                  addr0025:
                  this.dispatchMouseClick();
                  if(_loc2_)
                  {
                     this.dispatchRollOut();
                     if(_loc2_)
                     {
                        addr0039:
                        this._clickLock = false;
                     }
                     §§goto(addr003e);
                  }
                  §§goto(addr0039);
               }
               addr003e:
               return;
            }
            §§goto(addr0039);
         }
         §§goto(addr0025);
      }
   }
}


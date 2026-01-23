package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import as3isolib.enum.IsoOrientation;
   import as3isolib.graphics.BitmapFill;
   import as3isolib.graphics.Stroke;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.objects.RectMatrixObject3d;
   
   public class PlaneObject extends RectMatrixObject3d implements IPlaneObject, IInteraction, IInformationFloat
   {
      
      public static const UPDATE_PRESENTATION:String = "UPDATE_PRESENTATION";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         UPDATE_PRESENTATION = "UPDATE_PRESENTATION";
      }
      
      private var _standardFill:BitmapFill;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      public function PlaneObject(param1:DisplayObject, param2:PlaneObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this.stroke = new Stroke(0,0,0);
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004e:
                  this.planeObjectVo = param2;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.planeObjectVo.addEventListener(PlaneObjectVo.DATA_CHANGED,this.onDataChanged);
                     §§goto(addr0060);
                  }
               }
               §§goto(addr00ac);
            }
            addr0060:
            if(_loc4_)
            {
               this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr00a2);
               }
               §§goto(addr00ac);
            }
            addr00a2:
            this.prepareInformationFloaterManager();
            if(!_loc3_)
            {
               addr00ac:
               this.setStandardFill();
            }
            return;
         }
         §§goto(addr004e);
      }
      
      public function validateData() : void
      {
      }
      
      public function onDataChanged(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1.type != PlaneObjectVo.DATA_CHANGED)
            {
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0046);
               }
            }
            this.redraw();
            return;
         }
         addr0046:
         throw new IllegalOperationError("DONT CALL THIS FUNCTION DIRECTLY!!!!");
      }
      
      public function redraw() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:DisplayObject = null;
         if(_loc4_ || _loc3_)
         {
            if(presentation is PreloadableImage)
            {
               addr0031:
               _loc1_ = (presentation as PreloadableImage).presentation;
               if(_loc4_)
               {
                  if(!(presentation as PreloadableImage).loadComplete)
                  {
                     if(!_loc5_)
                     {
                        presentation.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.autoredraw);
                     }
                  }
               }
            }
            else
            {
               _loc1_ = presentation;
            }
            var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,16777215);
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.lock();
            }
            §§push(this.width * this.planeObjectVo.matrix3dCoordinates.width);
            if(!_loc5_)
            {
               §§push(§§pop() / _loc2_.width);
               if(_loc4_)
               {
                  §§push(§§pop());
               }
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               _loc2_.draw(_loc1_,new Matrix());
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  _loc2_.unlock();
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     this.fill = new BitmapFill(_loc2_,IsoOrientation.XY,new Matrix(_loc3_,0,0,_loc3_),null,false,true);
                     if(!_loc5_)
                     {
                        addr0136:
                        this.render();
                     }
                  }
                  §§goto(addr013b);
               }
               §§goto(addr0136);
            }
            addr013b:
            return;
         }
         §§goto(addr0031);
      }
      
      private function autoredraw(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.redraw();
         }
      }
      
      public function get planeObjectVo() : PlaneObjectVo
      {
         return _data as PlaneObjectVo;
      }
      
      public function get objectVo() : IPlaneObjectVo
      {
         return _data as IPlaneObjectVo;
      }
      
      public function set planeObjectVo(param1:PlaneObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            _data = param1;
            if(!(_loc2_ && _loc2_))
            {
               this.setSize(this.planeObjectVo.matrix3dCoordinates.width * this.planeObjectVo.tilesize,this.planeObjectVo.matrix3dCoordinates.height * this.planeObjectVo.tilesize,0);
               if(!(_loc2_ && _loc3_))
               {
                  this.x = this.planeObjectVo.matrix3dCoordinates.x * this.planeObjectVo.tilesize;
                  addr006e:
                  if(!(_loc2_ && _loc3_))
                  {
                     addr009b:
                     this.y = this.planeObjectVo.matrix3dCoordinates.y * this.planeObjectVo.tilesize;
                  }
                  §§goto(addr00af);
               }
               §§goto(addr009b);
            }
            addr00af:
            return;
         }
         §§goto(addr006e);
      }
      
      private function onMouseMove(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
         }
      }
      
      private function onMouseRollOver(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!this.planeObjectVo.userInteractionLocked)
            {
               if(_loc3_)
               {
                  this.container.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.container.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
                     if(!_loc2_)
                     {
                        this.container.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                        if(!_loc2_)
                        {
                           this.container.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                           if(!_loc2_)
                           {
                              addr008f:
                              this.container.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                              if(_loc3_)
                              {
                                 §§goto(addr00b3);
                              }
                           }
                           §§goto(addr00d0);
                        }
                        addr00b3:
                        this.container.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr00d0:
                           dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this));
                        }
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr008f);
            }
            addr00e3:
            return;
         }
         §§goto(addr00b3);
      }
      
      private function onMouseRollOut(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.container.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc2_ || _loc2_)
            {
               this.container.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(_loc2_ || Boolean(this))
               {
                  addr005a:
                  this.container.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this.container.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(!_loc3_)
                     {
                        addr0099:
                        dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this));
                     }
                     §§goto(addr00ac);
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr005a);
         }
         addr00ac:
      }
      
      private function onMouseUp(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.container.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseDown(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.container.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!this.planeObjectVo.userInteractionLocked)
            {
               if(_loc3_ || _loc3_)
               {
                  dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
               }
            }
         }
      }
      
      public function restEventListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.onMouseRollOut();
         }
      }
      
      public function prepareHighlightManager() : void
      {
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
      }
      
      public function get standardFill() : BitmapFill
      {
         return this._standardFill;
      }
      
      private function setStandardFill() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:DisplayObject = null;
         if(_loc5_)
         {
            if(presentation is PreloadableImage)
            {
               addr002d:
               _loc1_ = (presentation as PreloadableImage).presentation;
               if(_loc5_ || _loc3_)
               {
                  if(!(presentation as PreloadableImage).loadComplete)
                  {
                     if(_loc5_)
                     {
                        presentation.addEventListener(PreloadableImage.PRELOADING_COMPLETE,this.autoStandardFill);
                     }
                  }
               }
            }
            else
            {
               _loc1_ = presentation;
            }
            var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,16777215);
            if(_loc5_)
            {
               _loc2_.lock();
            }
            §§push(this.width * this.planeObjectVo.matrix3dCoordinates.width);
            if(!(_loc4_ && Boolean(_loc1_)))
            {
               §§push(§§pop() / _loc2_.width);
               if(!_loc4_)
               {
                  §§push(§§pop());
               }
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.draw(_loc1_,new Matrix());
               if(_loc5_ || Boolean(_loc1_))
               {
                  §§goto(addr00eb);
               }
               §§goto(addr010c);
            }
            addr00eb:
            _loc2_.unlock();
            if(_loc5_ || Boolean(_loc2_))
            {
               addr010c:
               this._standardFill = new BitmapFill(_loc2_,IsoOrientation.XY,new Matrix(_loc3_,0,0,_loc3_),null,false,true);
            }
            return;
         }
         §§goto(addr002d);
      }
      
      private function autoStandardFill(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.setStandardFill();
         }
      }
      
      public function prepareInformationFloaterManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._informationFloaterManager);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0054);
                  }
               }
               §§goto(addr0064);
            }
            §§goto(addr0068);
         }
         addr0054:
         this._informationFloaterManager = new InformationFloaterManager();
         if(_loc1_)
         {
            addr0068:
            this._informationFloaterManager.prepareInformationFloaterManager(this.planeObjectVo,null);
            addr0064:
         }
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._informationFloaterManager.invalidateInformationFloaterManager(param1);
         }
      }
   }
}


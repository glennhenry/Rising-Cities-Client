package net.bigpoint.cityrama.controller.field
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GroundGeneratStreetsTexturesCommand extends SimpleCommand
   {
      
      private var _pathwalkProxy:PathWalkProxy;
      
      private var playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function GroundGeneratStreetsTexturesCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.playfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:StreetObject = StreetObject(param1.getBody());
         _loc2_ = _loc4_.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y;
         this.renewByCoordinates(_loc2_,_loc3_);
         _loc2_ = _loc4_.streetObjectVo.matrix3dCoordinates.x + 1;
         _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y;
         this.renewByCoordinates(_loc2_,_loc3_);
         _loc2_ = _loc4_.streetObjectVo.matrix3dCoordinates.x - 1;
         _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y;
         this.renewByCoordinates(_loc2_,_loc3_);
         _loc2_ = _loc4_.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y + 1;
         this.renewByCoordinates(_loc2_,_loc3_);
         _loc2_ = _loc4_.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = _loc4_.streetObjectVo.matrix3dCoordinates.y - 1;
         this.renewByCoordinates(_loc2_,_loc3_);
      }
      
      private function getStreetAt(param1:int, param2:int) : StreetObjectVo
      {
         return this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(param1,param2,0,1,1,1)) as StreetObjectVo;
      }
      
      private function renewByCoordinates(param1:int, param2:int) : void
      {
         var _loc3_:StreetObject = null;
         if(this.getStreetAt(param1,param2) != null && this.getStreetAt(param1,param2) is StreetObjectVo)
         {
            _loc3_ = this.playfieldObjectsProxy.getStreetObjectByVo(this.getStreetAt(param1,param2)) as StreetObject;
            if(_loc3_ != null)
            {
               this.selectTextureByNeighbours(_loc3_);
               this.chooseTexture(_loc3_);
               sendNotification(ApplicationNotificationConstants.GROUND_REDRAW_GROUNDOBJECT,_loc3_);
            }
         }
      }
      
      private function selectTextureByNeighbours(param1:StreetObject) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = param1.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = param1.streetObjectVo.matrix3dCoordinates.y;
         _loc2_ = param1.streetObjectVo.matrix3dCoordinates.x + 1;
         _loc3_ = param1.streetObjectVo.matrix3dCoordinates.y;
         if(this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)) is StreetObjectVo)
         {
            param1.streetObjectVo.o = true;
         }
         else
         {
            param1.streetObjectVo.o = false;
         }
         _loc2_ = param1.streetObjectVo.matrix3dCoordinates.x - 1;
         _loc3_ = param1.streetObjectVo.matrix3dCoordinates.y;
         if(this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)) is StreetObjectVo)
         {
            param1.streetObjectVo.w = true;
         }
         else
         {
            param1.streetObjectVo.w = false;
         }
         _loc2_ = param1.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = param1.streetObjectVo.matrix3dCoordinates.y + 1;
         if(this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)) is StreetObjectVo)
         {
            param1.streetObjectVo.n = true;
         }
         else
         {
            param1.streetObjectVo.n = false;
         }
         _loc2_ = param1.streetObjectVo.matrix3dCoordinates.x;
         _loc3_ = param1.streetObjectVo.matrix3dCoordinates.y - 1;
         if(this.playfieldObjectsProxy.getGameObjectByCuboid(new Cuboid(_loc2_,_loc3_,0,1,1,1)) is StreetObjectVo)
         {
            param1.streetObjectVo.s = true;
         }
         else
         {
            param1.streetObjectVo.s = false;
         }
      }
      
      private function chooseTexture(param1:StreetObject) : void
      {
         var _loc2_:Boolean = param1.streetObjectVo.n;
         var _loc3_:Boolean = param1.streetObjectVo.w;
         var _loc4_:Boolean = param1.streetObjectVo.s;
         var _loc5_:Boolean = param1.streetObjectVo.o;
         if(!_loc2_ && !_loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && _loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 270;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 180;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && _loc3_ && !_loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && !_loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 270;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && !_loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(!_loc2_ && _loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").rotation = 180;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = true;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = false;
         }
         if(_loc2_ && _loc3_ && _loc4_ && !_loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").rotation = 90;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = true;
         }
         if(_loc2_ && _loc3_ && !_loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").rotation = 0;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = true;
         }
         if(_loc2_ && !_loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").rotation = 270;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = true;
         }
         if(!_loc2_ && _loc3_ && _loc4_ && _loc5_)
         {
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").rotation = 180;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetline").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcrossing").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetend").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streetcurve").visible = false;
            (param1.presentation as DisplayObjectContainer).getChildByName("streettcrossing").visible = true;
         }
         param1.redraw();
      }
   }
}


package net.bigpoint.cityrama.model.field.ground
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.ArrayMatrix3D;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlaneProxy extends Proxy
   {
      
      public static const NAME:String = "PlaneProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "PlaneProxy";
      }
      
      private var _configPlayfieldProxy:PlayfieldProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _groundMatrix3d:ArrayMatrix3D;
      
      private var _defaultGrounds:Vector.<Rectangle>;
      
      private var _inactiveGrounds:Vector.<Rectangle>;
      
      public function PlaneProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param1)))
            {
               this._defaultGrounds = new Vector.<Rectangle>();
               §§goto(addr0035);
            }
            §§goto(addr00a6);
         }
         addr0035:
         if(!(_loc3_ && Boolean(param2)))
         {
            this._inactiveGrounds = new Vector.<Rectangle>();
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr0083);
            }
            §§goto(addr00a6);
         }
         addr0083:
         this._configPlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         if(_loc4_ || Boolean(this))
         {
            addr00a6:
            this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         }
      }
      
      public function resetModel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._groundMatrix3d = new ArrayMatrix3D(this._configPlayfieldProxy.config.maxX,this._configPlayfieldProxy.config.maxY);
         }
      }
      
      public function addIPlaneObjectByData(param1:IPlaneObjectVo, param2:int = 1) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:Cuboid = new Cuboid(param1.groundDTO.posX,param1.groundDTO.posY,param2,param1.groundDTO.config.sizeX,param1.groundDTO.config.sizeY,1);
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            this._groundMatrix3d.setObjectByCuboid(param1,_loc3_);
         }
      }
      
      public function removeIPlaneObjectByData(param1:IPlaneObjectVo, param2:int = 1) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Cuboid = new Cuboid(param1.groundDTO.posX,param1.groundDTO.posY,param2,param1.groundDTO.config.sizeX,param1.groundDTO.config.sizeY,1);
         if(!(_loc5_ && Boolean(param2)))
         {
            this._groundMatrix3d.setObjectByCuboid(null,_loc3_);
         }
      }
      
      public function getObjectByCuboid(param1:Cuboid) : GroundDTO
      {
         return GroundDTO(this._groundMatrix3d.getObjectByCuboid(param1));
      }
      
      public function getObjectsByPoint(param1:Point) : Array
      {
         return this._groundMatrix3d.getColBy2DCoordinates(param1.x,param1.y);
      }
      
      public function addObject(param1:IPlaneObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_.groundDTO != null)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this.addIPlaneObjectByData(_loc2_,1);
               }
            }
         }
      }
      
      public function updateObject(param1:IPlaneObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         if(!_loc3_)
         {
            this.removeIPlaneObjectByData(_loc2_);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               this.addIPlaneObjectByData(_loc2_);
            }
         }
      }
      
      public function removeObject(param1:IPlaneObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  if(_loc2_.groundDTO != null)
                  {
                     if(!_loc4_)
                     {
                        addr004f:
                        this.removeIPlaneObjectByData(_loc2_);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      public function get defaultGrounds() : Vector.<Rectangle>
      {
         return this._defaultGrounds;
      }
      
      public function set defaultGrounds(param1:Vector.<Rectangle>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._defaultGrounds = param1;
         }
      }
      
      public function get inactiveGrounds() : Vector.<Rectangle>
      {
         return this._inactiveGrounds;
      }
      
      public function set inactiveGrounds(param1:Vector.<Rectangle>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._inactiveGrounds = param1;
         }
      }
      
      public function get groundMatrix3d() : ArrayMatrix3D
      {
         return this._groundMatrix3d;
      }
   }
}


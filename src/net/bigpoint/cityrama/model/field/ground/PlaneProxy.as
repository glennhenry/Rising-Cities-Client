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
      
      private var _configPlayfieldProxy:PlayfieldProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _groundMatrix3d:ArrayMatrix3D;
      
      private var _defaultGrounds:Vector.<Rectangle>;
      
      private var _inactiveGrounds:Vector.<Rectangle>;
      
      public function PlaneProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._defaultGrounds = new Vector.<Rectangle>();
         this._inactiveGrounds = new Vector.<Rectangle>();
         this._configPlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
      }
      
      public function resetModel() : void
      {
         this._groundMatrix3d = new ArrayMatrix3D(this._configPlayfieldProxy.config.maxX,this._configPlayfieldProxy.config.maxY);
      }
      
      public function addIPlaneObjectByData(param1:IPlaneObjectVo, param2:int = 1) : void
      {
         var _loc3_:Cuboid = new Cuboid(param1.groundDTO.posX,param1.groundDTO.posY,param2,param1.groundDTO.config.sizeX,param1.groundDTO.config.sizeY,1);
         this._groundMatrix3d.setObjectByCuboid(param1,_loc3_);
      }
      
      public function removeIPlaneObjectByData(param1:IPlaneObjectVo, param2:int = 1) : void
      {
         var _loc3_:Cuboid = new Cuboid(param1.groundDTO.posX,param1.groundDTO.posY,param2,param1.groundDTO.config.sizeX,param1.groundDTO.config.sizeY,1);
         this._groundMatrix3d.setObjectByCuboid(null,_loc3_);
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
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         if(_loc2_.groundDTO != null)
         {
            this.addIPlaneObjectByData(_loc2_,1);
         }
      }
      
      public function updateObject(param1:IPlaneObject) : void
      {
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         this.removeIPlaneObjectByData(_loc2_);
         this.addIPlaneObjectByData(_loc2_);
      }
      
      public function removeObject(param1:IPlaneObject) : void
      {
         var _loc2_:IPlaneObjectVo = param1.objectVo;
         if(_loc2_ != null)
         {
            if(_loc2_.groundDTO != null)
            {
               this.removeIPlaneObjectByData(_loc2_);
            }
         }
      }
      
      public function get defaultGrounds() : Vector.<Rectangle>
      {
         return this._defaultGrounds;
      }
      
      public function set defaultGrounds(param1:Vector.<Rectangle>) : void
      {
         this._defaultGrounds = param1;
      }
      
      public function get inactiveGrounds() : Vector.<Rectangle>
      {
         return this._inactiveGrounds;
      }
      
      public function set inactiveGrounds(param1:Vector.<Rectangle>) : void
      {
         this._inactiveGrounds = param1;
      }
      
      public function get groundMatrix3d() : ArrayMatrix3D
      {
         return this._groundMatrix3d;
      }
   }
}


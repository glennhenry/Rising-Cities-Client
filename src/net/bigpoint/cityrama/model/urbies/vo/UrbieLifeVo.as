package net.bigpoint.cityrama.model.urbies.vo
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.GameObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUrbieLifeVo;
   
   public class UrbieLifeVo extends GameObjectVo implements IGameObjectVo, IUrbieLifeVo
   {
      
      private var _speed:Number = 0.25;
      
      private var _id:String;
      
      private var _config:UrbieLifeConfigVo;
      
      private var _icon:DisplayObject;
      
      private var _iconOffset:Point = new Point(0,-30);
      
      private var _walker:IWalker;
      
      public var listenToMouseEvents:Boolean = false;
      
      public function UrbieLifeVo(param1:UrbieLifeConfigVo)
      {
         super(null);
         this.configPlayfieldItemVo = new ConfigPlayfieldItemDTO({"moveable":true});
         this.matrix3dCoordinates = new Cuboid();
         this._config = param1;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
      
      public function get config() : UrbieLifeConfigVo
      {
         return this._config;
      }
      
      public function get icon() : DisplayObject
      {
         return this._icon;
      }
      
      public function set icon(param1:DisplayObject) : void
      {
         this._icon = param1;
      }
      
      public function get walker() : IWalker
      {
         return this._walker;
      }
      
      public function set walker(param1:IWalker) : void
      {
         this._walker = param1;
      }
   }
}


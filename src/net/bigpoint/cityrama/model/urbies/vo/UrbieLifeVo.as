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
      
      private var _iconOffset:Point;
      
      private var _walker:IWalker;
      
      public var listenToMouseEvents:Boolean = false;
      
      public function UrbieLifeVo(param1:UrbieLifeConfigVo)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._iconOffset = new Point(0,-30);
            if(_loc2_)
            {
               super(null);
               if(!_loc3_)
               {
                  this.configPlayfieldItemVo = new ConfigPlayfieldItemDTO({"moveable":true});
                  if(_loc2_ || _loc2_)
                  {
                     addr006b:
                     this.matrix3dCoordinates = new Cuboid();
                     if(_loc2_)
                     {
                        addr007b:
                        this._config = param1;
                     }
                  }
                  return;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr007b);
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function set id(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._id = param1;
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._icon = param1;
         }
      }
      
      public function get walker() : IWalker
      {
         return this._walker;
      }
      
      public function set walker(param1:IWalker) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._walker = param1;
         }
      }
   }
}


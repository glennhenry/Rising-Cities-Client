package net.bigpoint.cityrama.model.field
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FieldBuildProxy extends Proxy
   {
      
      public static const NAME:String = "FieldBuildProxy";
      
      private var _gridProxy:GridProxy;
      
      private var _selectedConfig:ConfigPlayfieldItemDTO;
      
      private var _billboardObjectToAdd:BillboardObject;
      
      private var _planeObjectToAdd:IPlaneObject;
      
      private var _oldMatrixCoordinates:Point;
      
      private var _buildAndBuyPermission:Boolean;
      
      public function FieldBuildProxy()
      {
         super(NAME,null);
      }
      
      override public function onRegister() : void
      {
         this._gridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
      }
      
      override public function onRemove() : void
      {
         this._selectedConfig = null;
         this._gridProxy = null;
      }
      
      public function get selectedConfig() : ConfigPlayfieldItemDTO
      {
         return this._selectedConfig;
      }
      
      public function set selectedConfig(param1:ConfigPlayfieldItemDTO) : void
      {
         this._selectedConfig = param1;
         this._gridProxy.mode = GridProxy.MODE_SINGLE_SELECTION;
      }
      
      public function get billboardObjectToAdd() : BillboardObject
      {
         return this._billboardObjectToAdd;
      }
      
      public function set billboardObjectToAdd(param1:BillboardObject) : void
      {
         this._billboardObjectToAdd = param1;
      }
      
      public function reset() : void
      {
         this._gridProxy.setItemSize(this._selectedConfig.sizeX,this._selectedConfig.sizeY,this._selectedConfig.zLevels.length,VectorUtilities.getMinValue(this._selectedConfig.zLevels));
      }
      
      public function get planeObjectToAdd() : IPlaneObject
      {
         return this._planeObjectToAdd;
      }
      
      public function set planeObjectToAdd(param1:IPlaneObject) : void
      {
         this._planeObjectToAdd = param1;
      }
      
      public function get oldMatrixCoordinates() : Point
      {
         return this._oldMatrixCoordinates;
      }
      
      public function set oldMatrixCoordinates(param1:Point) : void
      {
         this._oldMatrixCoordinates = param1;
      }
      
      public function get buildAndBuyPermission() : Boolean
      {
         return this._buildAndBuyPermission;
      }
      
      public function set buildAndBuyPermission(param1:Boolean) : void
      {
         this._buildAndBuyPermission = param1;
      }
   }
}

